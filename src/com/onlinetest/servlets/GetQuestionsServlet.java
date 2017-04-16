package com.onlinetest.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinetest.models.Question;
import com.onlinetest.models.Test;
import com.onlinetest.utils.JdbcUtil;

public class GetQuestionsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GetQuestionsServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String semester = request.getParameter("semester");
		String subject = request.getParameter("selectedSubject");
		String branch = request.getParameter("branch");
		Test test = new Test(Integer.parseInt(semester), subject, branch);
		System.out.println(request.getSession().getAttribute("user"));
		System.out.println(semester);
		request.getSession().setAttribute("test", test);
		List<Question> questions = JdbcUtil.findQuestionPaperBySemester(test);
		request.setAttribute("questions", questions);
		request.getSession().setAttribute("questions", questions);
		request.getRequestDispatcher("showPaper.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
