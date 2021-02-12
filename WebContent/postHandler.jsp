<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prova con elementi java</title>
</head>
<body>
	<form method="post" action="postHandler">
		<table border="0">
			<tr>
				<td valign="top">Your name is:</td>
				<td valign="top"><input type= "text" name="username" size="20"></td>
			</tr>
			<tr>
				<td valign="top">Your department is:</td>
				<td valign="top"><input type= "text" name="department" size="20"></td>
			</tr>
			<tr>
				<td valign="top">Your email address is:</td>
				<td valign="top"><input type= "text" name= "email" size="20">
				</td>
			</tr>
			<tr>
				<td valign="top"><input type= "submit" value= "SubmitInfo"></td>
			</tr>
		</table>
	</form>
	<br />
	<br />
	<a href="index.html">Back</a>
	<a href="index.html">Home</a>
</body>
</html>