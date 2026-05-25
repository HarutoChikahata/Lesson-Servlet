<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String lastName = (String) session.getAttribute("savedName");
	if(lastName == null){
		lastName = "";
	}
%>
<%@include file="../header.html" %>

<h1>こんにちは！<%= lastName %>さん！</h1>

<br>
<a href="input.jsp">戻る</a>

<%@include file="../footer.html" %>