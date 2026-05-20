<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問い合わせ</title>
<style>
    body { font-family: sans-serif; margin: 20px; text-align: center; }
    .form-group { margin-bottom: 15px; }
    label { display: inline-block; width: 100px; }
</style>
</head>
<body>
    
    <h2>お問い合わせフォーム</h2>
	
	<form action="${pageContext.request.contextPath}/servlet/Contact" method="post">
			<div class="form-group">
					<label for="username">氏名</label>
					<input type="text" id="username" name="username" required>
			</div>
			<div class="form-group">
					<label for="company">会社名</label>
					<input type="text" id="company"name="company" required>
			</div>
			<div class="form-group">
					<label for="e-mail">メールアドレス</label>
					<input type="text" id="email"name="email" required>
			</div>
			<div class="form-group">
					<label for="content">お問い合わせ内容</label>
					<textarea id="content" name="content" rows"10" required></textarea>
			</div>
			<div class="checkbox">
					<p>受け取るメールマガジンをお選びください</p>
					<p><input type="checkbox" id= "merumaga" name= "merumaga" value= "総合案内">総合案内</p>
					<p><input type="checkbox" id= "merumaga" name= "merumaga" value= "セミナー案内">セミナー案内</p>
					<p><input type="checkbox" id= "merumaga" name= "merumaga" value= "求人採用情報">求人採用情報</p>
			</div>
			<div class="radiobutton">
					<p>資料請求はご希望ですか？</p>
					<p><input type="radio" name= "shiryou" value= "Yes" checked>Yes</p>
					<p><input type="radio" name= "shiryou" value= "No">No</p>
			<button type="submit">送信</button>
	</form>
<%@include file="../footer.jsp" %>