package org.sg.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Map;
import java.util.Iterator;
import java.util.Map.Entry;

public class PostHandler extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		String name = request.getParameter("username");
		String depart = request.getParameter("department");
		String email = request.getParameter("email");
		response.setContentType("text/html");
		java.io.PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Welcome</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<form method=\"post\" action =\"" + request.getContextPath() + "/postHandler\" >");
		out.println("<h1>Your Identity</h1>");
		out.println("Your name is: " + ((name == null || name.equals("")) ? "Unknown" : name));
		out.println("<br><br>");
		out.println("Your department is: " + ((depart == null || depart.equals("")) ? "Unknown" : depart));
		out.println("<br><br>");
		out.println("Your email address is: " + ((email == null || email.equals("")) ? "Unknown" : email));
		out.println("<h2>Using ServletRequest.getParameterMap</h2>");
		Map param_map = request.getParameterMap();
		if (param_map == null)
			throw new ServletException("getParameterMap returned null in: " + getClass().getName());
		Iterator iterator = param_map.entrySet().iterator();
		while (iterator.hasNext()) {
			Map.Entry me = (Map.Entry) iterator.next();
			out.println(me.getKey() + ": ");
			String[] arr = (String[]) me.getValue();
			for (int i = 0; i < arr.length; i++) {
				out.println(arr[i]);

				if (i > 0 && i != arr.length - 1)
					out.println(", ");
			}
			out.println("</form>");
			out.println("<br><br>");
		}
		out.println("<br/><br/>");
		out.println("<a href=\"postHandler.jsp\">Back</a>");
		out.println("<a href=\"index.html\">Home</a>");
		out.println("</body>");
		out.println("</html>");
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		doPost(request, response);
	}
}
