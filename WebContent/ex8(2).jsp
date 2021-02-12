<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page language="java"%>
<%@ page import="java.lang.*"%>
<html>
<body>
	<%
	String x1Str = request.getParameter("x1");
	String x2Str = request.getParameter("x2");
	double result = 0;
	double x1 = -1;
	double x2 = -1;
	String opName = request.getParameter("opName");
	boolean isValid = false;
	String strResult = null;
	%>
	<H1>
		<center>
			Result for
			<%=opName%></center>
	</H1>
	<%
	try {
		x1 = Double.parseDouble(x1Str);
		x2 = Double.parseDouble(x2Str);
		if (opName.equals("add")) {
			result = x1 + x2;
			isValid = true;
		}
		if (opName.equals("mul")) {
			result = x1 * x2;
			isValid = true;
		}
		if (opName.equals("div")) {
			try {
		result = x1 / x2;
		if (x2 == 0) {
			throw new ArithmeticException();
		} else {
			isValid = true;
		}
			} catch (Exception e) {
		System.out.println("Non si puo' dividere per zero: " + e);
		strResult = "Non si puo' dividere per zero";
			}
		}
	} catch (Exception e) {
		if (x1Str.equals("") || x2Str.equals("")) {
			System.out.println("I campi non possono essere vuoti: " + e);
			strResult = "I campi non possono essere vuoti";
		} else {
			System.out.println("Non si possono inserire stringhe: " + e);
			strResult = "Non si possono inserire stringhe";
		}
	}
	if (isValid) {
	%>
	Il risultato e'
	<%=result%>
	<%
	} else {
	%>
	<%=strResult%>
	<%
	}
	%>
	<br />
	<br />
	<a href="ex8.jsp">Back</a>
	<a href="index.html">Home</a>
</body>
</html>