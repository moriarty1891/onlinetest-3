<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>Image</td>
			<td>college name</td>
		</tr>
	</table>
	<hr>
	<u></u>

	<form action="${pageContext.request.contextPath}/login" method="post">
		<table align="center">
			<tr>
				<td>Your Name:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Your Password:</td>
				<td><input type="password" name="pwd" /></td>
			</tr>
			<tr><td><%if(request.getParameter("m") != null) out.print("<font color = 'red'>" + request.getParameter("m") +"</font>");%></td></tr>
			<tr>
				<td align="right"><input type="submit" value="Login" /></td><td><a href="registeration.jsp" >New User?</a></td>
			</tr>
		</table>
	</form>
</body>
</html>