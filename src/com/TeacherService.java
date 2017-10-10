package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import cn.ac.ucas.conn.Conn;
import cn.ac.ucas.model.Teacher;
import cn.ac.ucas.model.User;
import cn.ac.ucas.model.Elective;
import cn.ac.ucas.model.Student;

public class TeacherService{
	private Connection conn;
	private PreparedStatement pstmt;

	public TeacherService() {
		conn = new Conn().getConn();
	}
	public boolean addCourse(Teacher teacher,String chose) {
		try {
			pstmt = conn.prepareStatement("update teacher set cname=? where tname=?");
			pstmt.setString(1, chose);
			pstmt.setString(2, teacher.getTName());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public boolean addScore(Elective elective,Student student){
		try{
			pstmt = conn.prepareStatement("update elective set score=? where name=?");
			pstmt.setInt(1,elective.getScore());
			pstmt.setString(2,student.getName());
			pstmt.executeUpdate();
			return true;
		}catch (SQLException e){
			e.printStackTrace();
			return false;
		}
		
	}
	public Teacher getTeaByName(String tname) {
		try {
			pstmt = conn.prepareStatement("select * from teacher where tname = ?");
			pstmt.setString(1, tname);
			ResultSet rst = pstmt.executeQuery();
			
			if(rst.next()){
				Teacher tea=new Teacher();
				tea.setTId(rst.getInt(1));
				tea.setTName(rst.getString(2));	
				tea.setCname(rst.getString(3));
				
				return tea;
			}			
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}
}