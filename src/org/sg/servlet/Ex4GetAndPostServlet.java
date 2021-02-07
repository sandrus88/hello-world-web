package org.sg.servlet;

import java.util.ArrayList;
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
		String parNameValue;
		boolean isValid = false;
		ArrayList<String> arrParameters = new ArrayList<String>();
		ArrayList<String> arrValues = new ArrayList<String>();
		while (paramNames.hasMoreElements()) {
			parName = (String) paramNames.nextElement();
			parNameValue = request.getParameter(parName);
			arrParameters.add(parName);
			arrValues.add(parNameValue);
		}
		for (int i = 0; i < arrValues.size(); i++) {
			if (!arrValues.get(i).equals("")) {
				isValid = true;
				break;
			}
		}
		response.setContentType("text/html");
		java.io.PrintWriter out = response.getWriter();
		out.println("<html><head>");
		out.println("<title>Submitted Parameters</title></head><body>");
		if (isValid) {
			out.println("<h2>Here are the submitted parameter values</h2>");
			for (int i = 0; i < arrParameters.size(); i++) {
				out.println("<strong>" + arrParameters.get(i) + "</strong> : " + arrValues.get(i));
				out.println("<br />");
			}
		} else {
			out.println("<h2>Sorry, the request does not contain any parameters</h2>");
		}
		out.println("<br/><br/>");
		out.println("<a href=\"ex4GetAndPostServlet\">Back</a>");
		out.println("<a href=\"index.html\">Home</a>");
		out.println("</body></html>");
	}
}