<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="beans.Favorite" %>
<% 
	//セッションからお気に入りリストを取得
	@SuppressWarnings("unchecked")
	List<Favorite> favList=(List<Favorite>) session.getAttribute("favList");
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お気に入り登録</title>
</head>
<body>

	<h2>お気に入り登録</h2>
	<form action="FavoriteServlet" method="post">
		<label for="name">名前:</label>
		<input type="text" id="name" name="name">
		
		<label for="url">URL:</label>
		<input type="text" id="url" name="url" value="https://">
		
		<input type="submit" value="追加">
	</form>
	
	<hr>
	
	<h2>登録一覧</h2>
	<ul>
	<%	
		if(favList != null && !favList.isEmpty()){
			for(Favorite fav : favList){
	%><li><a href="<%= fav.getUrl() %>" target="_blank"><%= fav.getName() %></a></li>
	
	<%
			}
		}else{
	%>
		<p>登録されているお気に入りはありません。</p>
	<%
		}
	%>
	</ul>

	<form action="ClearServlet" method="post">
		<input type="submit" value="クリア">
	</form>

<%@include file="../footer.html" %>
