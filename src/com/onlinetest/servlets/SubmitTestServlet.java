package com.onlinetest.servlets;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinetest.models.Question;

public class SubmitTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SubmitTestServlet() {
        super();
    }

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("You completed your Test... Thank you!");
		List<Question> question = (List<Question>)request.getSession().getAttribute("questions");
		Enumeration<String> params = request.getParameterNames();
		while(params.hasMoreElements()) {
			System.out.println(request.getParameter(params.nextElement()));
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
