<%@page import="util.kadai1.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
	int allStone = 0;
	int oneStone = 0;
	int playerAmount = 0;
	String stoneChar = "";
	
	// index.jspから初めて遷移した時の処理(フォームのパラメータをget)
	if (session.getAttribute("oneStone") == null) {
		allStone = Integer.parseInt(request.getParameter("allstone"));
		oneStone = Integer.parseInt(request.getParameter("onestone"));
		playerAmount = Integer.parseInt(request.getParameter("playeramount"));
		stoneChar = (String) request.getParameter("stonechar");
		session.setAttribute("totalNum", allStone);
		session.setAttribute("player", 65);	//unicodeを利用
		session.setAttribute("oneStone", oneStone);
		session.setAttribute("playerAmount", playerAmount);
		session.setAttribute("stoneChar", stoneChar);
	}
	

    // 残数の更新処理(残数の取得、更新、保存など) 
    
	oneStone = (int) session.getAttribute("oneStone");
	
	playerAmount = (int) session.getAttribute("playerAmount");
	
	stoneChar = (String) session.getAttribute("stoneChar");
	
	
	int inputNum;		//各ターンの取得数処理
	if (Utility.isNullOrEmpty(request.getParameter("num"))) {
		inputNum = 0;
	} else {
		inputNum = Integer.parseInt(request.getParameter("num"));
	}

    int totalNum = (int) session.getAttribute("totalNum") - inputNum;  // 残数用の変数。
    
    session.setAttribute("totalNum", totalNum);
    
    // プレイヤーの切替処理(プレイヤーの取得、切替、保存など)
    char player = (char) (int)session.getAttribute("player"); // プレイヤー用の変数。
    
	if (player < 64 + playerAmount && inputNum != 0) {
		    	session.setAttribute("player", player + 1);
    } else if (player == 64 + playerAmount && inputNum != 0){
	   	session.setAttribute("player", 65);
	}
    
    player = (char) (int)session.getAttribute("player");
    
    // 残数が0以下の場合、結果ページへ遷移
    // (responseオブジェクトのsendRedirectメソッドを使用する)
    if (totalNum <= 0) {
    	response.sendRedirect("finish.jsp");
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
      残り：<%= totalNum %>個
    </h2>
    <p class="stone">
      <%
          // todo:このprint分は仮の処理。実装が完了したら削除する。
          // 表示する文字列("●●～")をメソッドを使い取得し、取得した文字列を表示する
          out.println(Utility.getStoneDisplayHtml(totalNum, stoneChar));
      %>
    </p>
  </div>
  <div class="info">
    <h2>
      プレイヤー<%= player %>の番
    </h2>

    <form action="play.jsp">
      <p>
        石を
        <input type="number" name="num" min="1" max="<%= oneStone %>">
        個取る<br> ※1度に<%= oneStone %>個取れます。
      </p>
      <button class="btn" type="submit">決定</button>
    </form>
  </div>
</body>
</html>