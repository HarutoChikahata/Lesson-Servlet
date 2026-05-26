<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String currentNotice=(String)application.getAttribute("notice");
%>
<%@include file="../header.html" %>
	
	<h1>現在のお知らせ</h1>
	
	<p>
	<%
		if (currentNotice!=null && !currentNotice.isEmpty()){
			out.print(currentNotice);
		} else{
			out.print("現在お知らせはありません。");
		}
	
	%>
	</p>
	
	<br>
	<a href="setNotice.jsp">お知らせを設定する。</a>
	
<%@include file="../footer.html" %>