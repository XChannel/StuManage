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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="javascripts/prettify.js"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
    <script src="javascripts/bootstrap-select.js"></script>
    <script type="text/javascript">
      window.onload=function(){
      $('.selectpicker').selectpicker(); 
      };
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
					Option Course
				</h1>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
				
			<div class="alert alert-success alert-dismissable">
				 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<h4>
					注意!
				</h4> <strong>Warning!</strong> Best check yo self, you're not looking too good. <a href="#" class="alert-link">alert link</a>
			</div>
				
				
				
				
				
				<form action="Optioncourse" method="post"  >
						<select name="course" class="selectpicker">
					      <option>数据结构</option>
					      <option>算法设计</option>
					      <option>操作系统</option>
					      <option>计算机网络</option>
					   </select>
					   <input type="submit" value="提交">
		</form>
				</div>
				<div class="col-md-4 column">
				
				</div>
				<div class="col-md-4 column">
				</div>
			</div>
		</div>
	</div>
</div>

	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>