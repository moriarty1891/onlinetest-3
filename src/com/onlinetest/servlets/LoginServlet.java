package com.onlinetest.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinetest.models.User;
import com.onlinetest.utils.JdbcUtil;

public class LoginServlet extends HttpServlet {
	enum Roles {ADMIN, STUDENT}
	enum Status {PENDING, ACTIVE, BLOCK}
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String username = request.getParameter("name");
		String password = request.getParameter("pwd");

		User user = JdbcUtil.findByNameAndPassword(username, password);
		if(user != null) {
			if(Roles.ADMIN.toString().equals(user.getRole())) {
				System.out.println("Admin user");
			} else {
				request.getSession().setAttribute("user", user);
				response.sendRedirect("selectSubject.jsp");
				System.out.println("Student");
				return;
			}
		} else {
			System.out.println("User not exists in system. Show registration page");
			response.sendRedirect("login.jsp?m=invalid+credentials");
		}
	}

}
