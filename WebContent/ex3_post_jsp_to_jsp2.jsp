<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = request.getParameter("InputName");
	if (name != null) {
	%>
	<h1>
		Hello
		<%=name%>, <br /> Welcome to the School!
	</h1>
	<%
	} else {
	%>
	<h3>non hai inserito nessun nome</h3>
	<%
	}
	%>
</body>

<br />
<br />
<a href="ex3_post_jsp_to_jsp.jsp">Back</a>
<a href="index.html">Home</a>
</html>