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
<title>Insert title here</title>
    <link rel="stylesheet" href="dist/bootstrap.css" type="text/css" />
</head>
<body>
<%
	StudentService studentservice = new StudentService();
	

	List stus = studentservice.getAllStudent();
	/* out.println(stus.size()); */
	Iterator iter = stus.iterator();
	%>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					 <a href="admin.jsp">Home</a>
				</li>
				<li>
					 <a href="addstu.jsp">AddStudent</a>
				</li>
				<li class="active">
					Data
				</li>
			</ul>
			<div class="row clearfix">
				<div class="col-md-2 column">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								Features
							</h3>
						</div>
						<div class="panel-body">
							<a href="admin.jsp">ShowStudent</a>
						</div>
						<div class="panel-footer">
							 <a href="addstu.jsp">AddStudent</a>
						</div>
					</div>
				</div>
				<div class="col-md-9 column">
					<table class="table table-hover table-bordered">
						<thead>
														<tr>
								<th>
									id
								</th>
								<th>
									nickname
								</th>
								<th>
									姓名
								</th>
								<th>
									性别
								</th>
								<th>
									出生日期
								</th>
								<th>
									专业
								</th>
								<th>
									选择课程
								</th>
								<th>
									兴趣爱好
								</th>
								<th>
									备注
								</th>
							</tr>
						</thead>
									<%
				int i = 0;
				while (iter.hasNext()) {
					Student student = (Student) iter.next();
			%>
						<tbody>
			<tr <%if (i % 2 == 0) {%> bgcolor="#ffffff" <%}%>>
				<td><%=student.getId()%></td>
				<td><%=student.getNickname()%></td>
				<td><%=student.getName()%></td>
				<td>
					<%
						if (student.getGender() == 1) {
								out.println("男");
							} else {
								out.println("女");
							}
					%>
				</td>
				<td><%=student.getBirth()%></td>
				<td><%=student.getMajority()%></td>
				<td><%=student.getCourses()%></td>
				<td><%=student.getInterests()%></td>
				<td><%=student.getOtherinfo()%></td>
				<td><a href="updatestu.jsp?id=<%=student.getId()%>">修改</a></td>
				<td><a href="deletestu.jsp?id=<%=student.getId()%>">删除</a></td>
			<tr>
										<%
					i++;
					}
				%>
						</tbody>
					</table>
				</div>
				<div class="col-md-1 column">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>