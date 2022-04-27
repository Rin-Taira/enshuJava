<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください

    // 入力値取得
    request.setCharacterEncoding("UTF-8");

    String inputName = request.getParameter("name");
    if (request.getParameter("name").equals("")) {
    	inputName = "名無し";
    }
    
    int inputAge;
    if (request.getParameter("age").equals("")) {
    	inputAge = 0;                  //ageの入力がない場合
    } else {
    	inputAge = Integer.parseInt(request.getParameter("age"));
    }
    
	String inputBloodType = request.getParameter("bloodType");
	
    // ロボットからの返信用メッセージ作成
    String message1 = "<p>こんにちは、" + inputName + "さん！";
    if (inputName == "ロボット") {
    	message1 = message1 + "私と同じ名前ですね！";
    }
    message1 = message1 + "</p>";
    
    String message2 = "";
    if (inputAge == 20) {
        message2 = "<p>私と同い年なんですね！</p>";
    } else if (inputAge > 20) {
        message2 = "<p>私よりも" + (inputAge - 20) + "歳年上ですね。</p>";
    } else {
        message2 = "<p>私よりも" + (20 - inputAge) + "歳年下ですね。</p>";
    }
    
    String message3 = "";
    switch(inputBloodType) {
    case "typeA":
        message3 = "<p>私もA型です！</p>";
        break;
    case "typeB":
        message3 = "<p>B型の人と話すのは初めてです。</p>";
        break;
    case "typeAB":
        message3 = "<p>私の母がAB型です。</p>";
        break;
    case "typeO":
        message3 = "<p>私の父がO型です。</p>";
        break;
    }

%>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <title>Java基礎_演習問題3</title>
    </head>
    <body>
        <h1>Java基礎 - 演習問題3</h1>
        <h2>ロボットからの返信</h2>
        <div>
            <!-- 必要に応じて処理を変更してください  -->
            <%
            out.println(message1);
            out.println(message2);
            out.println(message3);
            %>
        </div>
        <a href="javaBasic3_input.jsp">戻る</a>
    </body>
</html>