package com;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.ac.ucas.conn.Conn;

/**
 * Servlet implementation class TeacherServlet
 */
@WebServlet("/TeacherServlet")
public class TeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private PreparedStatement pstmt;
	

		public TeacherServlet() {
			super();
			// TODO Auto-generated constructor stub
			conn=new Conn().getConn();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		
		if(request.getParameter("chose")!=null){

			if(request.getParameter("chose").equals("¿ª¿Î")){
				response.sendRedirect("Course.jsp");
			}
			else if(request.getParameter("chose").equals("Â¼Èë³É¼¨")){
				response.sendRedirect("setScore.jsp");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
