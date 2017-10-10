<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.StudentService"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%@page import="cn.ac.ucas.model.Elective"%>
<%@page import="com.TeacherService" %>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String GetChose=request.getParameter("Chose");
	TeacherService teacherservice = new TeacherService();
	Teacher tea = teacherservice.getTeaByName((String)session.getAttribute("tname"));
	teacherservice.addCourse(tea,GetChose);
		if( teacherservice.addCourse(tea,GetChose)==true){
	%>
	<jsp:forward page="teacher.jsp"></jsp:forward>
	<%
		}
	%>
</body>
</html>