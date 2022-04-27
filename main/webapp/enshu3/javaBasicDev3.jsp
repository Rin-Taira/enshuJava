<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
    // ※必要な処理を実装してください

    // 入力値取得
	String inputNum1 = request.getParameter("num1");
	String inputNum2 = request.getParameter("num2");
	String inputOperator = request.getParameter("operator");
	
    // 表示するメッセージ用の変数
    String calc = "";
    if (inputNum1 != null) {
    	if (!inputNum1.equals("") && !inputNum2.equals("")) {
    		int intNum1 = Integer.parseInt(inputNum1);
    		int intNum2 = Integer.parseInt(inputNum2);
    		calc = inputNum1;
    		switch (inputOperator) {
    		case "add":
    			calc = calc + "+" + inputNum2 + "=" + (intNum1 + intNum2);
    			break;
    		case "sub":
    			calc = calc + "-" + inputNum2 + "=" + (intNum1 - intNum2);
    			break;
    		case "mul":
    			calc = calc + "×" + inputNum2 + "=" + (intNum1 * intNum2);
    			break;
    		case "div":
    			calc = calc + "÷" + inputNum2 + "=" + (intNum1 / intNum2);
    			break;
    		}
    	}
    } 

    // メッセージ作成
    String message = "";
    if (inputNum1 != null) {
    	if (inputNum1.equals("") && inputNum2.equals("")) {
    		message = "数値が両方とも未入力です";
    	} else {
    		message = "数値を入力してください";
    	}
    } else {
    	message = "数値を入力してください";
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Java基礎_演習問題3(発展)</title>
        <style>
            .number {
            width: 80px;
            }
        </style>
    </head>
    <body>
        <h1>Java基礎 - 演習問題3(発展)</h1>
        <h2>四則演算</h2>
        <p>
            <!-- メッセージの表示  -->
		<%
		out.println(calc);
		out.println(message);
		%>
        </p>

        <form action="javaBasicDev3.jsp" method="post">
            <input type="number" min="1" max="999999" class="number" name="num1">
            <select name="operator">
                <option value="add">＋</option>
                <option value="sub">ー</option>
                <option value="mul">×</option>
                <option value="div">÷</option>
            </select>
            <input type="number" min="1" max="999999" class="number" name="num2">
            <button type="submit">計算</button>
        </form>
    </body>
</html>