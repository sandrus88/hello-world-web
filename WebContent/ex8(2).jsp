<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page language="java"%>
<%@ page import="java.lang.*"%>
<html>
<body>
	<H1>
		<center>
			Result for
			<%=request.getParameter("a1")%></center>
	</H1>
	<%
	int i;
	int j;
	int k = 0;
	String str = request.getParameter("a1");

	try {
		i = Integer.parseInt(request.getParameter("t1"));
		j = Integer.parseInt(request.getParameter("t2"));
		if (str.equals("add")) {
			k = i + j;
		}
		if (str.equals("mul")) {
			k = i * j;
		}
		try {
			if (str.equals("div")) {
				k = i / j;
				j = 0;
			}
		} catch (ArithmeticException e) {
			System.out.println("Non e' possibile dividere per zero");
		}
	} catch (NumberFormatException e) {
		System.out.println("Puoi inserire solo numeri");
	}
	%>
	Result is
	<%=k%>

	<br />
	<br />
	<a href="ex8.jsp">Back</a>
	<a href="index.html">Home</a>
</body>
</html>