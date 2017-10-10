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
<script type="text/javascript">
/*     String.prototype.queryString= function(name) {
    var reg=new RegExp("[\?\&]" + name+ "=([^\&]+)","i"),r = this.match(reg);
    return r!==null?unescape(r[1]):null;
};
    window.onload=function(){
        var last=location.href.queryString("_v");
        document.body.innerHTML+=last||"";
        if(location.href.indexOf("?")==-1){
            location.href=location.href+"?_v="+(new Date().getTime());
        }else{
            var now=new Date().getTime();
            if(!last){
                location.href=location.href+"&_v="+(new Date().getTime());
            }else if(parseInt(last)<(now-1000)){
                location.href=location.href.replace("_v="+last,"_v="+(new Date().getTime()));
            }
        }
    }; */
    </script>
    <link rel="stylesheet" href="dist/bootstrap.css" type="text/css" />
<title>Insert title here</title>
</head>
<body>

<%
	StudentService studentservice = new StudentService();
	
	Student student = studentservice.getStuByName(session.getAttribute("name").toString());
	%>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					 <a href="student.jsp">Home</a>
				</li>
				<li>
					 <a href="Option.jsp">OptionCourse</a>
				</li>
				<li class="active">
					Data
				</li>
			</ul>
			<div class="page-header">
				<h1>
					Student Message
				</h1>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
				</div>
				<div class="col-md-4 column">
				</div>
				<div class="col-md-4 column">
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-9 column">
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
						<tbody>
							<tr>
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
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-md-9 column">
				</div>
			</div>
		</div>
	</div>
</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	</div>
</body>
</html>