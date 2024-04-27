<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mybatis이용하기</title>
</head>
<body>
	<h2>연결확인</h2>
	<h3>
		<a href="${path}/connecttest.do">DB연결</a>
	</h3>
	<h3>mybatis이용하기</h3>
	<h4>
		<a href="${path}/student/insertstudent.do">학생등록</a>
	</h4>
	<form action="${path}/student/insertstudentbyname.do">
		<input type="text" name="name">
		<input type="submit" name="학생저장">
	</form>
</body>
</html>