<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a Team</title>
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
				type="text" id="domesticTitles" name="domesticTitles"
				value="${teamUpdate.domesticTitles}" />
		</div>
		<input type="submit" value="Update Team" /> <input type="hidden"
			value="${teamUpdate.id}" name="id" />
	</form>
	<a href="index.do"><button>Home</button></a>
</body>
</html>