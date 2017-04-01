package com.onlinetest.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;
import com.onlinetest.models.User;
import com.onlinetest.utils.JdbcUtil;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isError = false;
		String errorMessage = null;
		String username = request.getParameter("username");
		if(username == null || "".equals(username)){
			isError = true;
			errorMessage = "Username cannot be blank";
		} /// return error
		String firstName = request.getParameter("firstname");
		if(firstName == null || "".equals(firstName.trim())){
			isError = true;
			errorMessage = "First Name cannot be blank";
		} /// return error
		String lastName = request.getParameter("lastname");
		if(lastName == null || "".equals(lastName.trim())){
			isError = true;
			errorMessage = "Last Name cannot be blank";
		} /// return error
		String fatherName = request.getParameter("fathername");
		if(fatherName == null || "".equals(fatherName.trim())){
			isError = true;
			errorMessage = "Father name cannot be blank";
		} /// return error
		String motherName = request.getParameter("mothername");
		if(motherName == null || "".equals(motherName.trim())){
			isError = true;
			errorMessage = "Mother's name cannot be blank";
		} /// return error
		String date = request.getParameter("date");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		String rollNumber = request.getParameter("roll");
		if( rollNumber== null || "".equals(rollNumber.trim())){
			isError = true;
			errorMessage = "roll number cannot be blank";
		} /// return error
		String address = request.getParameter("address");
		String course = request.getParameter("course");
		if(course == null || "".equals(course.trim())){
			isError = true;
			errorMessage = "Course cannot be blank";
		} /// return error
		String session = request.getParameter("session");
		if(session == null || "".equals(session.trim())){
			isError = true;
			errorMessage = "Session cannot be blank";
		} /// return error
		String branch = request.getParameter("branch");
		if(branch == null || "".equals(branch.trim())){
			isError = true;
			errorMessage = "Branch cannot be blank";
		} /// return error
		String email = request.getParameter("email");
		if(email == null || "".equals(email.trim())){
			isError = true;
			errorMessage = "Email cannot be blank";
		} /// return error
		String contact = request.getParameter("contact");
		if(contact == null || "".equals(contact.trim())){
			isError = true;
			errorMessage = "Contact cannot be blank";
		} /// return error
		String gender = request.getParameter("gender");
		String password = request.getParameter("password");
		if(password == null || "".equals(password.trim())){
			isError = true;
			errorMessage = "Username cannot be blank";
		} /// return error
		String cPassword = request.getParameter("cpassword");
		if(cPassword == null || "".equals(cPassword.trim())){
			isError = true;
			errorMessage = "Confirm password cannot be blank";
		} /// return error

		boolean isValidPwd = isValidPassword(password, cPassword);
		if(!isValidPwd) {
			isError = true;
			errorMessage = "password and confirm password should be same";
		} // return error

		if(isError) {
			response.sendRedirect("registeration.jsp?m="+errorMessage);
			return;
		}
		User user = new User();
		user.setAddress(address);
		user.setBranch(branch);
		user.setContact(contact);
		user.setCourse(course);
		Date dob = null;
		try {
			dob = new SimpleDateFormat("yyyy-MM-dd").parse(year + "-" + month + "-" + date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		user.setDob(new SimpleDateFormat("yyyy-MM-dd").format(dob));
		user.setEmail(email);
		user.setFatherName(fatherName);
		user.setFirstName(firstName);
		user.setGender(gender);
		user.setLastName(lastName);
		user.setMotherName(motherName);
		user.setName(username);
		user.setPassword(cPassword);
		user.setRole(LoginServlet.Roles.STUDENT.toString());
		user.setSession(session);
		user.setStatus(LoginServlet.Status.PENDING.toString());
		user.setCreatedOn(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		try {
			JdbcUtil.save(user);
			response.sendRedirect("successStatus.jsp");
			return;
		} catch (MySQLIntegrityConstraintViolationException e) {
			System.out.println("User name already exists. Try Login with  your credentials.");
		}
		throw new ServletException();

	}

	private boolean isValidPassword(String password, String cPassword) {
		return password.equals(cPassword);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public static void main(String[] args) throws ParseException {
		System.out.println(new SimpleDateFormat("yyyy-MM-dd").parse(2017 + "-" + 2 + "-" + 22));
	}

}
