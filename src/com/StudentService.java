package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import cn.ac.ucas.conn.Conn;
import cn.ac.ucas.model.Student;
import cn.ac.ucas.model.User;

public class StudentService {
	private Connection conn;
	private PreparedStatement pstmt;

	public StudentService() {
		conn = new Conn().getConn();

	}

	public boolean addStu(Student student) {
		try {
			pstmt = conn.prepareStatement(
					"insert into Student(nickname,name,gender,birth,majority,course,interest,otherinfo)"
							+ "values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, student.getNickname());
			pstmt.setString(2, student.getName());
			pstmt.setByte(3, student.getGender());
			pstmt.setString(4, student.getBirth());
			pstmt.setString(5, student.getMajority());
			pstmt.setString(6, student.getCourses());
			pstmt.setString(7, student.getInterests());
			pstmt.setString(8, student.getOtherinfo());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
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
	public List getOneStudent(String name) {
		List stuList = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from Student where name=?");
			pstmt.setString(1, name);
			ResultSet rst = pstmt.executeQuery();
			while (rst.next()) {
				Student stu = new Student();
				stu.setId(rst.getInt(1));
				stu.setNickname(rst.getString(2));
				stu.setName(rst.getString(3));
				stu.setGender(rst.getByte(4));
				stu.setBirth(rst.getString(5));

				stu.setMajority(rst.getString(6));
				if (rst.getString(7) != null) {
					stu.setCourse(rst.getString(7).split("&&"));
				}
				if (rst.getString(8) != null) {
					stu.setInterest(rst.getString(8).split("&&"));
				}

				stu.setOtherinfo(rst.getString(9));

				stuList.add(stu);

			}

			return stuList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List getAllStudent() {
		List stuList = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from Student");
			ResultSet rst = pstmt.executeQuery();
			while (rst.next()) {
				Student stu = new Student();
				stu.setId(rst.getInt(1));
				stu.setNickname(rst.getString(2));
				stu.setName(rst.getString(3));
				stu.setGender(rst.getByte(4));
				stu.setBirth(rst.getString(5));

				stu.setMajority(rst.getString(6));
				if (rst.getString(7) != null) {
					stu.setCourse(rst.getString(7).split("&&"));
				}
				if (rst.getString(8) != null) {
					stu.setInterest(rst.getString(8).split("&&"));
				}

				stu.setOtherinfo(rst.getString(9));

				stuList.add(stu);

			}

			return stuList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public boolean deleteStu(int id) {

		try {
			pstmt = conn.prepareStatement("delete from Student where id=?");
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	public Student getStuById(int id) {
		try {
			pstmt = conn.prepareStatement("select * from Student where id = ?");
			pstmt.setInt(1, id);
			ResultSet rst = pstmt.executeQuery();
			
			if(rst.next()){
				Student stu=new Student();
				stu.setId(rst.getInt(1));
				stu.setNickname(rst.getString(2));
				stu.setName(rst.getString(3));
				stu.setGender(rst.getByte(4));
				stu.setBirth(rst.getString(5));

				stu.setMajority(rst.getString(6));
				if (rst.getString(7) != null) {
					stu.setCourse(rst.getString(7).split("&&"));
				}
				if (rst.getString(8) != null) {
					stu.setInterest(rst.getString(8).split("&&"));
				}

				stu.setOtherinfo(rst.getString(9));
				
				return stu;
			}
			
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}
	public Student getStuByName(String name) {
		try {
			pstmt = conn.prepareStatement("select * from Student where name=?");
			pstmt.setString(1, name);
			ResultSet rst = pstmt.executeQuery();
			
			if(rst.next()){
				Student stu=new Student();
				stu.setId(rst.getInt(1));
				stu.setNickname(rst.getString(2));
				stu.setName(rst.getString(3));
				stu.setGender(rst.getByte(4));
				stu.setBirth(rst.getString(5));

				stu.setMajority(rst.getString(6));
				if (rst.getString(7) != null) {
					stu.setCourse(rst.getString(7).split("&&"));
				}
				if (rst.getString(8) != null) {
					stu.setInterest(rst.getString(8).split("&&"));
				}

				stu.setOtherinfo(rst.getString(9));
				
				return stu;
			}
			
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}
	
}
