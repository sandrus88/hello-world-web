<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String name = request.getParameter( "inputName" );
if(name!=null) { %>
<h1>
Hello <%= name %>, <br />
 Welcome to the School!
</h1>
<% } %>
</body>

<br/>
<br/>
<a href="prova_con_java.jsp">Back</a>
<a href="index.html">Home</a>
</html>