<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<HEAD>
<META name="author" content=
"Bruce W. Perry, author@jspservletcookbook.com">
<META name="keywords" content=
"Java, JSP, servlets, databases, MySQL, Oracle, web development">
<TITLE>Parker River: Thanks For Visiting
<%= request.getParameter("fname") %>
<%= request.getParameter("lname") %>
</TITLE>
</HEAD>
</body>
</html>