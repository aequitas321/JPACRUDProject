<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a Team</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Righteous">
</head>
<body>
	<form action="updatedTeam.do" method="POST">
		<div class="form-group">
			<label for="name">Team Name</label><input type="text" id="name"
				name="name" value="${teamUpdate.name}" />
		</div>
		<div class="form-group">
			<label for="league">League</label><input type="text" id="league"
				name="league" value="${teamUpdate.league}" />
		</div>
		<div class="form-group">
			<label for="city">City</label><input type="text" id="city"
				name="city" value="${teamUpdate.city}" />
		</div>
		<div class="form-group">
			<label for="country">Country</label><input type="text" id="country"
				name="country" value="${teamUpdate.country}" />
		</div>
		<div class="form-group">
			<label for="stadium">Stadium Name</label><input type="text"
				id="stadium" name="stadium" value="${teamUpdate.stadium}" />
		</div>
		<div class="form-group">
			<label for="domesticTitles">League Titles won</label><input
				type="number" id="domesticTitles" name="domesticTitles"
				value="${teamUpdate.domesticTitles}" min="0" />
		</div>
		<div class="form-group">
			<label for="stadium">Team Logo</label><input type="text"
				id="teamLogo" name="teamLogo" value="${teamUpdate.teamLogo}" />
		</div>
		<div class="btn-group">
			<input type="submit" value="Update Team" /> <input type="hidden"
				value="${teamUpdate.id}" name="id" />
		</div>
	</form>
	<div class="btn-group">
		<a href="index.do"><button>Home</button></a>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>