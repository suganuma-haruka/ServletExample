<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>掲示板システム≪ログイン≫</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="main-contents">
	<h2>掲示板システム≪ログイン≫</h2>

<c:if test="${ not empty errorMessages }">
	<div class="errorMessages">
		<ul>
			<c:forEach items="${ errorMessages }" var="message">
				<font color="red"><li>エラー：<c:out value="${ message }" /></font>
			</c:forEach>
		</ul>
	</div>
	<c:remove var="errorMessages" scope="session"/>
</c:if>

<form action="login" method="post"><br />
	<label for="user_id">ログインID</label><br />
	<input name="user_id" value="${ loginUser.userId }" id="user_id"/> <br />

	<label for="password">パスワード</label><br />
	<input name="password" type="password" id="password"/> <br />
	<br />
	<input type="submit" value="ログイン" /> <br />
<br />
</form>

<div class="copyright">Copyright(c) Haruka Suganuma</div>
</div>
</body>
</html>