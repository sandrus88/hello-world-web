package org.sg.servlet;

import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex4GetAndPostServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		response.setContentType("text/html");

		java.io.PrintWriter out = response.getWriter();

		out.println("<html><head>");
		out.println("<title>Help Page</title></head><body>");
		out.println("<h2>Please submit your information</h2>");
		out.println("<form method=\"post\" action =\"" + request.getContextPath() + "/ex4GetAndPostServlet\" >");
		out.println("<table border=\"0\"><tr><td valign=\"top\">");
		out.println("Your first name: </td> <td valign=\"top\">");
		out.println("<input type=\"text\" name=\"firstname\" size=\"20\">");
		out.println("</td></tr><tr><td valign=\"top\">");
		out.println("Your last name: </td> <td valign=\"top\">");
		out.println("<input type=\"text\" name=\"lastname\" size=\"20\">");
		out.println("</td></tr><tr><td valign=\"top\">");
		out.println("Your email: </td> <td valign=\"top\">");
		out.println("<input type=\"text\" name=\"email\" size=\"20\">");
		out.println("</td></tr><tr><td valign=\"top\">");
		out.println("<input type=\"submit\" value=\"Submit Info\"></td></tr>");
		out.println("</table></form>");
		out.println("get gestita, questa e' la risposta GET dal server");
		out.println("<br/><br/>");
		out.println("<a href=\"index.html\">Back</a>");
		out.println("<a href=\"index.html\">Home</a>");
		out.println("</body></html>");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		Enumeration paramNames = request.getParameterNames();
		String parName;
		boolean emptyEnum = false;
		if (!paramNames.hasMoreElements()) {
			emptyEnum = true;
		}
		response.setContentType("text/html");

		java.io.PrintWriter out = response.getWriter();

		out.println("<html><head>");
		out.println("<title>Submitted Parameters</title></head><body>");
		if (emptyEnum) {
			out.println("<h2>Sorry, the request does not contain any parameters</h2>");
			out.println("<a href=\"ex4GetAndPostServlet\">Back</a>");
		} else {
			out.println("<h2>Here are the submitted parameter values</h2>");
		}
		while (paramNames.hasMoreElements()) {
			parName = (String) paramNames.nextElement();
			out.println("<strong>" + parName + "</strong> : " + request.getParameter(parName));
			out.println("<br />");
		}
		out.println("<br/><br/>");
		out.println("<a href=\"ex4GetAndPostServlet\">Back</a>");
		out.println("<a href=\"index.html\">Home</a>");
		out.println("</body></html>");
	}
}
