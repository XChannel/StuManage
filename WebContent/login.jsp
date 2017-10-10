<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="style/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="dist/bootstrap.css" type="text/css" />
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
			<h3>
				教务系统
			</h3>
			<form role="form" action="Login" method="post">
				<div class="form-group">
					 <label for="exampleInputEmail1">name</label>
					 <input type="text" name="name" value="" class="form-control" id="exampleInputEmail1" >
					 
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Password</label>
					
					 <input type="password"  name="password"value="" class="form-control" id="exampleInputPassword1">
				</div>
				
				<div class="checkbox">
					student <input type="radio" name="character" value="student" >
		    	  teacher <input type="radio" name="character" value="teacher">
		     	 tourist <input type="radio" name="character" value="tourist">
				</div> <button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
</div>









    
</body>
</html>