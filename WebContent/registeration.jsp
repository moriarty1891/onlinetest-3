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
		<form action="${pageContext.request.contextPath}/register" method="post">
			<table align="center">
			<tr><td><% if(request.getParameter("m") != null) out.print("<font color = 'red'>" + request.getParameter("m")+ "</font>"); %></td></tr>
			<tr>
					<td><font color = "red">*</font>Username:</td>
					<td><input type="text" name="username" autofocus required/></td>
				</tr>
				<tr>
					<td><font color = "red">*</font>First Name:</td>
					<td><input type="text" name="firstname" autofocus required/></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="lastname" required/></td>
				</tr>
				<tr>
					<td>Father's Name:</td>
					<td><input type="text" name="fathername" required/></td>
				</tr>
				<tr>
					<td>Mother's Name:</td>
					<td><input type="text" name="mothername" required/></td>
				</tr>
				<tr>
					<td>DOB:</td>
					<td><select name="date">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
							
					</select>
					<select name="month">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select>
					<select name="year">
							<option value="1990">1990</option>
							<option value="1991">1991</option>
							<option value="1992">1992</option>
							<option value="1993">1993</option>
							<option value="1994">1994</option>
							<option value="1995">1995</option>
							<option value="1996">1996</option>
							<option value="1997">1997</option>
							<option value="1998">1998</option>
							<option value="1999">1999</option>
							<option value="2000">2000</option>
							<option value="2001">2001</option>
							<option value="2002">2002</option>
							<option value="2003">2003</option>
							<option value="2004">2004</option>
							<option value="2005">2005</option>
							<option value="2006">2006</option>
							<option value="2007">2007</option>
							<option value="2008">2008</option>
							<option value="2009">2009</option>
							<option value="2010">2010</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>Roll number:</td>
					<td><input type="text" name="roll" required/></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><textarea rows="4" cols="20"></textarea></td>
				</tr>
				<tr>
					<td>Course:</td>
					<td><select name="course">
							<option value="diplomaEngg">Diploma engg.</option>
							
					</select></td>
				</tr>
				<tr>
					<td>Session:</td>
					<td><input type="text" name="session" required/></td>
				</tr>
				<tr>
					<td>Branch:</td>
					<td><select name="branch">
							<option value="mechanical">Mechanical engg.</option>
							<option value="civil">Civil Engg.</option>
							<option value="computers">Computer Engg.</option>
							<option value="electrical">Electrical Engg.</option>
							<option value="electronics">Electronics Engg.</option>
							<option value="polymer">Polymer Engg.</option>
							<option value="chemical">Chemical  Engg.</option>
					</select></td>
			</tr>
				<tr>
					<td>Email id:</td>
					<td><input type="text" name="email"required /></td>
				</tr>
				<tr>
					<td>Contact number:</td>
					<td><input type="text" name="contact" required/></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><select name="gender">
							<option value="male">Male</option>
							<option value="female">Female</option>
					</select></td>
			</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" required /></td>
				</tr>
				<tr>
					<td>Confirm Password:</td>
					<td><input type="password" name="cpassword" required/></td>
				</tr>
				<tr>
					<td align="right"><input type="submit" value="Register" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>