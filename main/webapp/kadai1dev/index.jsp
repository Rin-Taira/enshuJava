<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    //セッションクリア
    session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java発展課題</title>
<link href="../css/kadai1/styles.css" rel="stylesheet">
</head>
<body>
  <h1>石取りゲーム</h1>

  <div class="info">
    <h2>条件</h2>
    <form action="play.jsp">
 		<p>石の総数: <input type="number" name="allstone" value="25" min="1" required></p>
 		<p>1度にとれる石の数: <input type="number" name="onestone" value="3" min="1" required></p>
 		<p>プレイヤーの数: <input type="number" name="playeramount" value="2" min="2" max="26" required>
 		<p>石の記号: <input type="text" name="stonechar" value="●" required></p>
      	<button class="btn" type="submit">始める</button>
    </form>
  </div>
</body>
</html>