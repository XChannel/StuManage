package com;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.*;

import cn.ac.ucas.conn.Conn;
import cn.ac.ucas.model.User;

import java.io.*;
import java.util.*;
import java.util.ArrayList;
import java.util.List;

public class Login extends HttpServlet{
	private Connection conn;
	private PreparedStatement pstmt;
	

		public Login() {
			super();
			// TODO Auto-generated constructor stub
			conn=new Conn().getConn();
		}
		
		
		public boolean validUser(User user){
			try {
				pstmt=conn.prepareStatement("select * from user where name=?and password=?");
				pstmt.setString(1, user.getName());
				pstmt.setString(2, user.getPassword());
				ResultSet rst=pstmt.executeQuery();
				if(rst.next()){
					return true;
				}else{
					return false;
				}
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
		//System.out.println("1");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		
		if  (request.getParameter("name")!=null&&request.getParameter("password")!=null){
		//	System.out.println("4");
			String name=request.getParameter("name");
			String password=request.getParameter("password");
			String getCharacter = request.getParameter("character");
			
			User user=new User();
			user.setName(name);
			user.setPassword(password);
			
			if(validUser(user)&&!name.equals("admin")){ 

				
				
				if(getCharacter.equals("student")){
					session.setAttribute("status","student");
					session.setAttribute("name",name);
					session.setAttribute("password",password);
					response.sendRedirect("student.jsp");
					
				}else if(getCharacter.equals("teacher")){
					session.setAttribute("status","teacher");
					session.setAttribute("tname",name);
					session.setAttribute("password",password);
					response.sendRedirect("teacher.jsp");
				}
				
			}else if(name.equals("admin")&&password.equals("admin")){
				session.setAttribute("status","admin");
				session.setAttribute("name",name);
				session.setAttribute("password",password);
				response.sendRedirect("admin.jsp");
			}else{
				session.setAttribute("status","tourist");
				out.println("<script>function go(){window.history.go(-1);}setTimeout('go()',1) </script>");
			}

              
            	
           
            }else
            {
            	out.println("<script>alert('fail:username or Password worng'); </script>");
            	out.println("<script>function go(){window.history.go(-1);}setTimeout('go()',1) </script>");
            }
    
           
     
	}
public void doGet(HttpServletRequest request, HttpServletResponse response)
		      throws IOException, ServletException
	{
		doPost(request, response);	 
	}

}
