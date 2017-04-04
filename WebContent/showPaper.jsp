<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.List, java.util.Iterator, com.onlinetest.models.Question"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Questions</title>
</head>
<body>
	<%
		List<Question> questions = (List<Question>) request.getAttribute("questions");
		if (null != questions && questions.size() > 0) {
	%>
	<form action="${pageContext.request.contextPath}/submitTest" method="post">
		<table>
			<%
				for (int i = 0; i < questions.size(); i++) {
			%>
			<tr></tr>
			<tr></tr>
			<tr>
				<td>
					<%
						out.print(questions.get(i).getQuestion());
					%>
				</td>
			</tr>
			<tr>
				<td><input type="radio" name='<%=questions.get(i).getId()%>' value='<%=questions.get(i).getOption1()%>' /><%out.print(questions.get(i).getOption1()); %></td>
			</tr>
			<tr>
				<td><input type="radio" name='<%=questions.get(i).getId()%>' value='<%=questions.get(i).getOption2()%>' /><%out.print(questions.get(i).getOption2()); %></td>
			</tr>
			<tr>
				<td>
					<%if (null != questions.get(i).getOption3() && !"null".equals(questions.get(i).getOption3()) && !"".equals(questions.get(i).getOption3())) {%><input type="radio" name='<%=questions.get(i).getId()%>' value='<%questions.get(i).getOption3();%>' /><%out.print(questions.get(i).getOption3()); %><%}%>
				</td>
			</tr>
			<tr>
				<td>
					<%if (null != questions.get(i).getOption4() && !"null".equals(questions.get(i).getOption4()) && !"".equals(questions.get(i).getOption4())) {%><input type="radio" name='<%=questions.get(i).getId()%>' value='<%questions.get(i).getOption4();%>' /><%out.print(questions.get(i).getOption4()); %><%}%>
				</td>
			</tr>

			<%
				}
			%>
			<tr><td><input type="submit" value="Submit Test" /></td></tr>
		</table>
	</form>
	<%
	}
%>
</body>
</html>