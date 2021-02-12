<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Sample Example</title>
<body>
	<h1>
		<center>OPERAZIONI</center>
	</h1>
	<b> Mathematics</b>
	<hr>
	<form method="post" action="ex8(2).jsp">
		<font size=5 face="Times New Roman"> <input type="radio"
			name="opName" value="add" checked>Addition</input><br> <input
			type="radio" name="opName" value="mul">Multiplication</input><br> <input
			type="radio" name="opName" value="div">Division</input><br>
		</font> <br>
		<br> Enter first Value<input type="text"
			name="x1" value=""><br> Enter second Value<input
			type="text" name="x2" value=""><br> <input type="submit"
			name="result">
	</form>
	<br />
	<br />
	<a href="index.html">Back</a>
	<a href="index.html">Home</a>
</body>
</html>