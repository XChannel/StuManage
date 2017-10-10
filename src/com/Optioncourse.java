package com;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.lang.String;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.ac.ucas.conn.Conn;
import cn.ac.ucas.model.Student;
import cn.ac.ucas.model.User;
public class Optioncourse extends HttpServlet{
	private Connection conn;
	private PreparedStatement pstmt;

	public Optioncourse() {
		conn = new Conn().getConn();

	}
	
	public boolean addCourse(Student student,String course) {
		try {
			pstmt = conn.prepareStatement(
					"update Student set course=? where name=?");

			String newCourse =student.getCourses()+"&&"+course; 
			
			pstmt.setString(1, newCourse);
			pstmt.setString(2, student.getName());
			pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
public void doPost(HttpServletRequest request,HttpServletResponse response)
		   throws IOException, ServletException
{
	request.setCharacterEncoding("UTF-8");
	System.out.println("1");
	PrintWriter out = response.getWriter();
	HttpSession session=request.getSession();
	String course = request.getParameter("course");
	StudentService studentservice = new StudentService();
	Student student = studentservice.getStuByName(session.getAttribute("name").toString());
	if(student.getCourses().contains(course)){
		out.println("<script>alert('you have already have this course'); </script>");
    	out.println("<script>function go(){window.history.go(-1).reload();}setTimeout('go()',1) </script>");
	}else{
			boolean stu = addCourse(student,course);
			if(stu){
				out.println("<script>alert('success'); </script>");
		    	out.println("<script>function go(){window.history.go(-1);}setTimeout('go()',1) </script>");
			}else{
				out.println("<script>alert('fail'); </script>");
		    	out.println("<script>function go(){window.history.go(-1);}setTimeout('go()',1) </script>");
			}
	}
}
public void doGet(HttpServletRequest request, HttpServletResponse response)
	      throws IOException, ServletException
{
	doPost(request, response);	 
}
}
