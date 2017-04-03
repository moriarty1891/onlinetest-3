<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body bgcolor="grey">
	
	<table>
		<tr>
			<td><div style="padding-left: 100px"><img src="http://1.bp.blogspot.com/-S0haiBSIfZw/TlwxuyARFVI/AAAAAAAAAAs/Fhnvlnp0iiY/s1600/DSC_0208.jpg" width="250px" height="100px"/></div></td>
			<td><p><i><b><font size="8">Guru Nanak Dev Institute Of Technology</b> </i><br>
					<font size="5" face="arial" color="black" ><b>formerly Guru Nanak Dev CO-Ed Polytechnic</b><br>
                    <font size="4" face="Lucida Calligraphy,Comic Sans MS,Lucida Consol" >DIRECTORATE OF TRAINING & TECHNICAL EDUCATION GOVT. OF NCT OF DELHI					
				</p>
			</td>
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
				<td align="right"><input type="submit" value="Login" class="formbutton" /></td><td><a href="registeration.jsp" >New User?</a></td>
			</tr>
		</table>
	</form>
</body>
</html>