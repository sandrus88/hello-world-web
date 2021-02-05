<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prova con elementi java</title>
</head>
<body>
	<form action="ex4ServletGet" method="get">
		
		<!-- <p>
			Name: <input type="text" name="InputName"></input>
		</p> -->
		<h1>
		Semplice esempio che manda una richiesta GET al server (qui, nel jsp, siamo al client). 
		La richiesta GET e' la stessa cosa come se chiamassimo dalla barra degli indirizzi (URL) 
		il comando /ex4ServletGet. 
		</h1>
		<p>
			<input type="submit" value="GET"></input>
		</p>
	</form>

	<br />
	<br />
	<a href="index.html">Back</a>
	<a href="index.html">Home</a>
</body>
</html>