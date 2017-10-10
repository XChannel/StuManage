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
public class Update extends HttpServlet{
	private Connection conn;
	private PreparedStatement pstmt;

	public Update() {
		conn = new Conn().getConn();

	}
public boolean updateStu(Student student){
		
		try {
			pstmt=conn.prepareStatement("update Student set nickname=?,name=?,gender=?,birth=?,majority=?,course=?,interest=?,otherinfo=? where id=?");
			pstmt.setString(1, student.getNickname());
			pstmt.setString(2, student.getName());
			pstmt.setByte(3, student.getGender());
			pstmt.setString(4, student.getBirth());
			pstmt.setString(5, student.getMajority());
			pstmt.setString(6, student.getCourses());
			pstmt.setString(7, student.getInterests());
			pstmt.setString(8, student.getOtherinfo());
			pstmt.setInt(9, student.getId());
			
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
	System.out.println("10");
	PrintWriter out = response.getWriter();
	HttpSession session=request.getSession();
	int id = Integer.parseInt(request.getParameter("id"));
	StudentService studentservice = new StudentService();
	Student student = studentservice.getStuById(id);
	if(studentservice.updateStu(student)){
		System.out.println("10");
		out.println("<script>alert('success'); </script>");
    	out.println("<script>function go(){window.history.go(-1);}setTimeout('go()',1) </script>");
    	System.out.println(student.getNickname());
    	System.out.println(student.getCourses());
    	System.out.println(student.getCourse());
    	System.out.println(student.getMajority());
    	System.out.println(student.getInterests());
    	System.out.println(student.getInterest());
	}else{
		out.println("<script>alert('success'); </script>");
    	out.println("<script>function go(){window.history.go(-1);}setTimeout('go()',1) </script>");
	}

}
public void doGet(HttpServletRequest request, HttpServletResponse response)
	      throws IOException, ServletException
{
	doPost(request, response);	 
}
}
