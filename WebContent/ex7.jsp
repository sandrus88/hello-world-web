<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp" />
<body bgcolor="white">
	<table width="660" border="0"
		summary="A two-column table in which resides a logo and
navigation bar">
		<tr>
			<td valign="top">Organization image goes here...
				<p>
					<u>Main</u>
			</td>
			<td align="right" valign="top">Navbar goes here...</td>
		</tr>
		<tr>
			<td valign="top" align="center" colspan="2">
				<table border="0" summary="A nested table for aligning body content">
					<tr>
						<td><h2>Thanks for registering at this site</h2></td>
					</tr>
					<tr>
						<td>Here is the info you submitted:</td>
					</tr>
					<tr>
						<td>Name: <%=request.getParameter("fname")%> <%=request.getParameter("lname")%></td>
					</tr>
					UNREGISTERED VERSION OF CHM TO PDF CONVERTER By THETA-SOFTWARE
					<tr>
						<td>Email: <%=request.getParameter("eaddress")%>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td></td>
		</tr>
	</table>
	<table width="660" border="0"
		summary="A table containing a footer navigation bar.">
		<tr>
			<td valign="top" align="center"><jsp:include page="footer.jsp" /></td>
		</tr>
	</table>
	<br />
	<br />
	<a href="index.html">Back</a>
	<a href="index.html">Home</a>
</body>
</html>