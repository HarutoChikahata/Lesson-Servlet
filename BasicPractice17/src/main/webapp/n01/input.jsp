<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% String lastName = (String) session.getAttribute("savedName");
	if(lastName == null){
		lastName = "";
	}
%>   
<%@include file="../header.html" %>

<p>名前を入力してください。</p>
<label for="username">名前：</label>
<form action="NameInputServlet" method="post">
<input type="text" id="username" name="username" value="<%= lastName %>">
<input type="submit" value="送信">
</form>

<%@include file="../footer.html" %>