<%@ page import="util.enshu5.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%
	request.setCharacterEncoding("UTF-8");
    // 入力値を取得
    String productName1 = request.getParameter("product1");
	String productName2 = request.getParameter("product2");
	String productAmount1 = request.getParameter("amount1");
	String productAmount2 = request.getParameter("amount2");
	String btn = request.getParameter("rank");

    // 数値に変換
    int intProductAmount1;
    int intProductAmount2;
    
    if (ParamUtil.isNullOrEmpty(productAmount1)) {
    	intProductAmount1 = 0;
    } else {
    	intProductAmount1 = Integer.parseInt(productAmount1);
    }
    
    if (ParamUtil.isNullOrEmpty(productAmount2)) {
    	intProductAmount2 = 0;
    } else {
    	intProductAmount2 = Integer.parseInt(productAmount2);
    }

    // ポイントを定義
    int flag = 0;
    if (!ParamUtil.isNullOrEmpty(btn)) {
    	if (btn.equals("1")) {
    		flag = 1;
    	} else if (btn.equals("2")) {
    		flag = 2;
    	}
    }

    // メソッドを呼んでポイントを取得
    int point1;
    int point2;
    if (flag == 0) {
    	point1 = ParamUtil.getPoint(intProductAmount1);
    	point2 = ParamUtil.getPoint(intProductAmount2);
    } else {
    	point1 = ParamUtil.getPoint(intProductAmount1, flag);
    	point2 = ParamUtil.getPoint(intProductAmount2, flag);
    }

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
  text-align: right;
}
</style>
</head>
<body>
  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>計算結果</h2>

  <table border="1">
    <tr>
      <th>商品</th>
      <th>金額</th>
      <th>ポイント</th>
    </tr>
    <tr>
      <td><%= productName1 %></td>
      <td class="right"><%= intProductAmount1 %></td>
      <td class="right"><%= point1 %></td>
    </tr>
    <tr>
      <td><%= productName2 %></td>
      <td class="right"><%= intProductAmount2 %></td>
      <td class="right"><%= point2 %></td>
    </tr>
  </table>

  <a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>