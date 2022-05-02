<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// TODO: 基本課題の実装

if (session.getAttribute("stock") == null) {
	session.setAttribute("stock", "");
}
String stock = (String) session.getAttribute("stock");

String btn = (String) request.getParameter("command");

String inputParam = (String) request.getParameter("param");

if ("stock".equals(btn)) {
	if (inputParam.isEmpty()) {
	} else {
		if (!stock.isEmpty()) {
			stock += ",";
		}
		stock += inputParam;
		session.setAttribute("stock", stock);
	}
} else if ("sort".equals(btn)) {
	if (!inputParam.isEmpty()) {
		if (!stock.isEmpty()) {
			stock += ",";
		}
		stock += inputParam;
		session.setAttribute("stock", stock);
	}
	response.sendRedirect("sort.jsp");
} else {
	session.setAttribute("stock", "");
}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Java基礎課題</title>
	</head>
	<body>
		<div>
			<p>数値をストックすることができます。<br>まとめてストックする場合はカンマ区切りで入力してください。</p>
			<form action="index.jsp" method="post">
    			<input type="text" name="param">
    			<div>
      				<button type="submit" name="command" value="stock">ストックする</button>
      				<button type="submit" name="command" value="sort">ソートする</button>
    			</div>
  			</form>
    		<p>現在のストック：<%= stock %></p>
		</div>
	</body>
</html>