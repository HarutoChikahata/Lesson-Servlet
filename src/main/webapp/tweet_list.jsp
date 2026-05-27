<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="jp.co.aforce.beans.Tweet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ツイート一覧</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>

	<div class="container">
		<h1>ツイート一覧</h1>
		<%-- 新規投稿 --%>
		<p>
			<a href="new_tweet.jsp">新規投稿</a>
		</p>

		<%-- ツイート一覧の表示 --%>
		<ul class="tweet-list">
			<li>
				<% List<Tweet> tweets=(List<Tweet>)request.getAttribute("tweets"); %>
				
				<% for (Tweet t : tweets) { %>
					<%=t.getContent() %>: <%=t.getAuthor() %>: <%=t.getPostedAt() %><br>
			   	<% } %>
<!--				<div class="tweet-content">-->
<!--					<p>content（ツイート内容）</p>-->
<!--					<p class="tweet-info">投稿者: author - 投稿日時: posted_at</p>-->
				</div>
			</li>
		</ul>
	</div>
</body>
</html>
