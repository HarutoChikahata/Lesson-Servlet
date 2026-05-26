<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品情報の確認</title>
</head>
<body>
	<h2>入力された商品情報</h2>
	
	<%--1. Productビーンのインスタンスを生成--%>
	<jsp:useBean id="product" class="bean.Product" scope="page" />
	<%--2. フォームから送信された全パラメータをBeanにセット--%>
	<jsp:setProperty name="product" property="*" />
	<%--3. Beanから値を取り出してJSP上に出力--%>
	<p>商品ID：<jsp:getProperty property="id" name="product"/></p>
	<p>商品名：<jsp:getProperty property="name" name="product"/></p>
	<p>価格：<jsp:getProperty property="price" name="product"/></p>
	
	<br>
	<a href="form.jsp">戻る</a>
</body>
</html>