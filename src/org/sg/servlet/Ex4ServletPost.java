package org.sg.servlet;

import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex4ServletPost extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
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
			out.println("<a href=\"ex4_post_jsp_to_servlet.jsp\">Back</a>");
		} else {
			out.println("<h2>Here are the submitted parameter values</h2>");
		}
		while (paramNames.hasMoreElements()) {
			parName = (String) paramNames.nextElement();
			out.println("<strong>" + parName + "</strong> : " + request.getParameter(parName));
			out.println("<br />");
		} 
		out.println("<br/><br/>");
		out.println("<a href=\"ex4_post_jsp_to_servlet.jsp\">Back</a>");
		out.println("<a href=\"index.html\">Home</a>");
		out.println("</body></html>");
	}
}
