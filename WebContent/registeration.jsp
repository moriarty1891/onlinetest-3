<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Online Registration</title>
</head>
<body>

	<div style="padding-top: 100px">
		<form action="${pageContext.request.contextPath}/register"
			method="post">
			<table align="center">
				<tr>
					<td><font color = "red">*</font>First Name:</td>
					<td><input type="text" name="firstname" required/></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="last name" required/></td>
				</tr>
				<tr>
					<td>Father's Name:</td>
					<td><input type="text" name="fathername" /></td>
				</tr>
				<tr>
					<td>Mother's Name:</td>
					<td><input type="text" name="mothername" /></td>
				</tr>
				<tr>
					<td>DOB:</td>
					<td><select name="date">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
					</select>
					<select name="month">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
					</select>
					<select name="year">
							<option value="1990">1990</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>Roll number:</td>
					<td><input type="text" name="roll" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<td>Course:</td>
					<td><select>
							<option value="volvo">Volvo</option>
							<option value="saab">Saab</option>
							<option value="mercedes">Mercedes</option>
							<option value="audi">Audi</option>
					</select></td>
				</tr>
				<tr>
					<td>Session:</td>
					<td><input type="text" name="session" /></td>
				</tr>
				<tr>
					<td>Branch:</td>
					<td><select name="branch">
							<option value="volvo">Volvo</option>
							<option value="saab">Saab</option>
							<option value="mercedes">Mercedes</option>
							<option value="audi">Audi</option>
					</select></td>
				</tr>
				<tr>
					<td>Email id:</td>
					<td><input type="text" name="email" /></td>
				</tr>
				<tr>
					<td>Contact number:</td>
					<td><input type="text" name="contact" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Confirm Password:</td>
					<td><input type="password" name="cpassword" /></td>
				</tr>
				<tr>
					<td align="right"><input type="submit" value="Register" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>