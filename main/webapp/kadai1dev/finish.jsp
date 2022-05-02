<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // セッションからプレイヤー名を取得する
    int playerAmount = (int) session.getAttribute("playerAmount");
    char player = (char) ((int)session.getAttribute("player"));
    String message = "";
	
	if (playerAmount == 2) {
		message = "勝者: プレイヤー" +  player + "！！";
	} else {
		if (player == 65) {
			player = (char)(64 + playerAmount);
		} else {
			player -= 1;
		}
		message = "敗者: プレイヤー" + player + "！！";
	}
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
    <h2>
    	<%= message %>
    </h2>
    <form action="index.jsp">
      <button class="btn" type="submit">先頭に戻る</button>
    </form>
  </div>
</body>
</html>