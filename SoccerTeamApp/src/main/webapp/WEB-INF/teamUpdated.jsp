<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles.css">
<link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Righteous">
</head>
<body>
	<c:choose>
		<c:when test="${teamUpdated != null}">
			<h1>Team updated Successfully</h1>
		</c:when>
		<c:otherwise>Unable to create Team</c:otherwise>
	</c:choose>
	<a href="index.do"><button>Home</button></a>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>