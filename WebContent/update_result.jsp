<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.StudentService"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%@page import="cn.ac.ucas.model.Student"%>
<%@page import="java.util.*"%>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	StudentService studentservice = new StudentService();
	Student stu = studentservice.getStuById(id);
		if( studentservice.updateStu(stu)==true){
	%>
	<jsp:forward page="admin.jsp"></jsp:forward>
	<%
		}
	%>

