<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Soccer Teams Home</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles.css">
<link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Righteous">
</head>
<body>
	<h1 class="indexH1">Soccer Team Info</h1>
	<a href="searchByLeague.do"><button class="indexButton">Search
			By League</button></a>
	<a href="searchById.do"><button class="indexButton">Search
			by Team ID</button></a>
	<a href="create.do"><button class="indexButton">Create
			your own team</button></a>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>