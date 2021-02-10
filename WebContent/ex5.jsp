<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- use the 'taglib' directive to make the JSTL 1.0 core tags available; use the uri
<%-- "http://java.sun.com/jsp/jstl/core" for JSTL 1.1 --%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- use the 'jsp:useBean' standard action to create the Date object; the object is set
as an attribute in page scope
--%>
<jsp:useBean id="date" class="java.util.Date" />
<head><title>First JSP</title></head>
<body>
<h2>Here is today's date</h2>
<c:out value="${date}" />
<br/>
<br/>
<a href="index.html">Back</a>
<a href="index.html">Home</a>
</body>
</html>