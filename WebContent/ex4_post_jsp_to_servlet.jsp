<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prova con elementi java</title>
</head>
<body>
	<form method="post" action="ex4ServletPost">
		<table border="0">
			<tr>
				<td valign="top">Your first name:</td>
				<td valign="top"><input type= "text" name="firstname" size="20"></td>
			</tr>
			<tr>
				<td valign="top">Your last name:</td>
				<td valign="top"><input type= "text" name="lastname" size="20"></td>
			</tr>
			<tr>
				<td valign="top">Your email:</td>
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