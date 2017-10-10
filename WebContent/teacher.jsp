<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.TeacherServlet"%>
	<%request.setCharacterEncoding("UTF-8"); %>
	<%@page import="cn.ac.ucas.model.Teacher"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>

<form action="TeacherServlet" method="post">
	<select name="chose" class="selectpicker">
	<option>开课</option>
	<option>录入成绩</option>
	</select>
	<input type="submit" value="提交">
</form>
</body>
</html>