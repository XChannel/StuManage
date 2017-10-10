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
	int id = Integer.parseInt(request.getParameter("id"));
	StudentService studentservice = new StudentService();
	Student stu = studentservice.getStuById(id);


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
				<div class="col-md-4 column">
					<form role="form">
					<input type="hidden" name="id" value="<%=stu.getId()%>">
						<div class="form-group">
							 <label for="exampleInputEmail1">name</label><input type="email" class="form-control" id="exampleInputEmail1" />
						</div>
						<div class="form-group">
							 <label for="exampleInputPassword1">sex</label>男<input class="short_input" type="radio" name="gender"
						value="1" <%if (stu.getGender() == 1) {%> checked <%}%> />
						女<input class="short_input" type="radio" name="gender" value="0"
						<%if (stu.getGender() == 0) {%> checked <%}%> />
						</div>
						<div class="form-group">
							 <label for="exampleInputPassword1">Brithday</label><input type="date" name="birth" class="form-control" id="exampleInputEmail1"
						value="<%=stu.getBirth()%>" />
						</div>
						<div class="form-group">
						
							 <label for="exampleInputPassword1">Majority</label><select name="majority">
							<option <%if(stu.getMajority().equals("计算机科学与技术")){%>selected<% } %>>计算机科学与技术</option>
							<option <%if(stu.getMajority().equals("电子")){%>selected<% } %>>电子</option>
							<option <%if(stu.getMajority().equals("自动化")){%>selected<% } %>>自动化</option>
							<option <%if(stu.getMajority().equals("电气工程")){%>selected<% } %>>电气工程</option>
					</select>
						</div>
							<div class="form-group">
							 <label for="exampleInputEmail1">OptionCourse</label><select name="course" multiple="multiple" >
							<option <%if(stu.getCourses().indexOf("数据结构")!=-1){ %>selected<%} %> >数据结构</option>
							<option <%if(stu.getCourses().indexOf("算法设计")!=-1){ %>selected<%} %>>算法设计</option>
							<option <%if(stu.getCourses().indexOf("操作系统")!=-1){ %>selected<%} %>>操作系统</option>
							<option <%if(stu.getCourses().indexOf("计算机网络")!=-1){ %>selected<%} %>>计算机网络</option>
					</select>
						</div>
							<div class="form-group">
							 <label for="exampleInputEmail1">Interest</label>	音乐：<input class="short_input" type="checkbox" name="interest" value="音乐" <%if(stu.getInterests().indexOf("音乐")!=-1){ %>checked<%}%>> 
						电影：<input class="short_input" type="checkbox"name="interest"  value="电影" <%if(stu.getInterests().indexOf("电影")!=-1){ %>checked<%}%>> 
						小说：<input class="short_input"type="checkbox" name="interest"  value="小说" <%if(stu.getInterests().indexOf("小说")!=-1){ %>checked<%}%>> 
						运动：<input class="short_input" type="checkbox" name="interest" value="运动" <%if(stu.getInterests().indexOf("运动")!=-1){ %>checked<%}%>>
						摄影：<input class="short_input" type="checkbox" name="interest" value="摄影" <%if(stu.getInterests().indexOf("摄影")!=-1){ %>checked<%}%>>
						</div>
							<div class="form-group">
							 <label for="exampleInputEmail1">Otherinfo</label>
							 <textarea name="otherinfo" rows="5" cols="40"
							value="<%=stu.getOtherinfo()%>"></textarea>
						</div>
						
						<div class="checkbox">
							 <label><input type="checkbox" />Check me out</label>
						</div> <button type="submit" class="btn btn-default">Submit</button>
					</form>
			
				</div>
				<div class="col-md-6 column">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>