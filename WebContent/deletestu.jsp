<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.StudentService"%>
	<%request.setCharacterEncoding("UTF-8"); %>
	<%@page import="cn.ac.ucas.model.Student"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除学生信息</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
	<h1 class="stu_title">删除学生信息</h1>
	
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		StudentService studentservice = new StudentService();
		if (studentservice.deleteStu(id) == true) {
        	out.println("<script>alert('success'); </script>");
        	out.println("<script>function go(){window.history.go(-1);}setTimeout('go()',1) </script>");
		} else {
			out.println("<script>alert('you fail'); </script>");
        	out.println("<script>function go(){window.history.go(-1);}setTimeout('go()',1) </script>");
		}
	%>
</body>
</html>