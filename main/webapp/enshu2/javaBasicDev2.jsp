<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
	String sumTitle = "合計";
    String[] month = {"1月", "2月", "3月"};
    String[] productClass = {"食品", "飲料"};
    int[][] amount = {{352000, 442000, 520000}, {278000, 342600, 380500}};
    int[] sumProductAmount = {amount[0][0] + amount[0][1] + amount[0][2], amount[1][0] + amount[1][1] + amount[1][2]};
    int[] sumMonthAmount = {amount[0][0] + amount[1][0], amount[0][1] + amount[1][1], amount[0][2] + amount[1][2]};
    int total = sumProductAmount[0] +sumProductAmount[1];

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題2(発展)</title>
<style>
table {
  border-collapse: collapse;
}

table th, table td {
  border: solid 1px black;
}
</style>

</head>
<body>
  <!-- 必要に応じて処理を変更してください  -->
  <h1>Java基礎 - 演習問題2(発展)</h1>
  <h2>売上一覧</h2>
  <table>
    <tr>
      <th></th>
      <%
      	out.println("<th>" + month[0] + "</th>");
      	out.println("<th>" + month[1] + "</th>");
      	out.println("<th>" + month[2] + "</th>");
      	out.println("<th>" + sumTitle + "</th>");
      %>
    </tr>
    <tr>
      <%
      	out.println("<td>" + productClass[0] + "</td>");
      	out.println("<td>" + amount[0][0] + "</td>");
      	out.println("<td>" + amount[0][1] + "</td>");
      	out.println("<td>" + amount[0][2] + "</td>");
      	out.println("<td>" + sumProductAmount[0] + "</td>");
      %>
    </tr>
    <tr>
      <%
      	out.println("<td>" + productClass[1] + "</td>");
      	out.println("<td>" + amount[1][0] + "</td>");
      	out.println("<td>" + amount[1][1] + "</td>");
      	out.println("<td>" + amount[1][2] + "</td>");
      	out.println("<td>" + sumProductAmount[1] + "</td>");
      %>
    </tr>
    <tr>
      <%
      	out.println("<td>" + sumTitle + "</td>");
      	out.println("<td>" + sumMonthAmount[0] + "</td>");
      	out.println("<td>" + sumMonthAmount[1] + "</td>");
      	out.println("<td>" + sumMonthAmount[2] + "</td>");
      	out.println("<td>" + total + "</td>");
      %>
    </tr>
  </table>
</body>
</html>