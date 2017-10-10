package cn.ac.ucas.model;
import java.util.Arrays;
public class Student {
	private int id;
	private String nickname;
	private String name;
	private byte gender;
	private String birth;
	private String majority;
	private String[] course = { "" };
	private String courses = "";
	private String[] interest = { "" };
	private String interests = "";
	private String otherinfo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte getGender() {
		return gender;
	}

	public void setGender(byte gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getMajority() {
		return majority;
	}

	public void setMajority(String majority) {
		this.majority = majority;
	}

	public String[] getCourse() {
		return course;
	}

	public void setCourse(String[] course) {
		this.course = course;
	}

	public String getCourses() {
		if (course != null) {
			/*for (int i = 0; i < course.length; i++) {
				courses += course[i] + "&&";
				
			}*/
			courses=Arrays.toString(course);
			courses = courses.substring(1, courses.length()-1);
		}
		
		
		return courses;
	}

	public void setCourses(String courses) {

		this.courses = courses;
	}

	public String[] getInterest() {
		return interest;
	}

	public void setInterest(String[] interest) {
		this.interest = interest;
	}

	public String getInterests() {
		if (interest != null) {
			for (int i = 0; i < interest.length; i++) {
				interests += interest[i] + "&&";
				;
			}
		}
		interests = interests.substring(0, interests.length() - 2);
		return interests;
	}

	public void setInterests(String interests) {

		this.interests = interests;
	}

	public String getOtherinfo() {
		return otherinfo;
	}

	public void setOtherinfo(String otherinfo) {
		this.otherinfo = otherinfo;
	}
	

}
