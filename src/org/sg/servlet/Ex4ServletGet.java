package org.sg.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex4ServletGet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		response.setContentType("text/html");

		java.io.PrintWriter out = response.getWriter();
		out.println("<html><head></head><body>");
		out.println("get gestita, questa e' la risposta GET dal server");
		out.println("<br/><br/>");
		out.println("<a href=\"ex4_get_jsp_to_servlet.jsp\">Back</a>");
		out.println("<a href=\"index.html\">Home</a>");
		out.println("</body></html>");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
	}
}
