<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="cn.ac.ucas.model.Teacher" %>
<%@page import="com.TeacherService" %>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="course_result.jsp" method="post">
	<select name="Chose" class="selectpicker">
	<option>数据结构</option>
	<option>算法设计</option>
	<option>操作系统</option>
	<option>计算机网络</option>
	</select>
	<input type="submit" value="提交">
</form>
</body>
</html>