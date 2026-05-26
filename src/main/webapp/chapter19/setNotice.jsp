<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String noticeInput=request.getParameter("notice");
	String message="";
	
	if (noticeInput!=null && !noticeInput.trim().isEmpty()){
		application.setAttribute("notice", noticeInput);
		message="<p style='colur: green;'>お知らせが設定されました!</p>";
	}
%>
<%@include file="../header.html" %>
	
	<h1>お知らせを設定</h1>
	
	<%= message %>
	
	<form action="setNotice.jsp" method="post">
		<input type="text" name="notice" required>
		<input type="submit" value="設定">
	</form>
	
	<br>
	<a href="showNotice.jsp">お知らせを確認</a>
	
<%@include file="../footer.html" %>