package kh.finalproj.hollosekki.users.model.vo;

import java.time.LocalDate;
import java.util.Date;

public class Users {
	private int usersNo;
	private String usersId;
	private String usersPw;
	private String checkPw;
	private String hintPw;
	private String usersName;
	private String nickName;
	private String email;
	private String phone;
	private Date enrollDate;
	private Date exitDate;
	private char status;
	private int checkDay;
	private int point;
	private String isAdmin;
	private String attendanceDate;
	private String attendanceDay;
	
	public Users() {}

	public Users(int usersNo, String usersId, String usersPw, String checkPw, String hintPw, String usersName,
			String nickName, String email, String phone, Date enrollDate, Date exitDate, char status, int checkDay,
			int point, String isAdmin, String attendanceDate, String attendanceDay) {
		super();
		this.usersNo = usersNo;
		this.usersId = usersId;
		this.usersPw = usersPw;
		this.checkPw = checkPw;
		this.hintPw = hintPw;
		this.usersName = usersName;
		this.nickName = nickName;
		this.email = email;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.exitDate = exitDate;
		this.status = status;
		this.checkDay = checkDay;
		this.point = point;
		this.isAdmin = isAdmin;
		this.attendanceDate = attendanceDate;
		this.attendanceDay = attendanceDay;
	}

	public int getUsersNo() {
		return usersNo;
	}

	public void setUsersNo(int usersNo) {
		this.usersNo = usersNo;
	}

	public String getUsersId() {
		return usersId;
	}

	public void setUsersId(String usersId) {
		this.usersId = usersId;
	}

	public String getUsersPw() {
		return usersPw;
	}

	public void setUsersPw(String usersPw) {
		this.usersPw = usersPw;
	}

	public String getCheckPw() {
		return checkPw;
	}

	public void setCheckPw(String checkPw) {
		this.checkPw = checkPw;
	}

	public String getHintPw() {
		return hintPw;
	}

	public void setHintPw(String hintPw) {
		this.hintPw = hintPw;
	}

	public String getUsersName() {
		return usersName;
	}

	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getExitDate() {
		return exitDate;
	}

	public void setExitDate(Date exitDate) {
		this.exitDate = exitDate;
	}

	public char getStatus() {
		return status;
	}

	public void setStatus(char status) {
		this.status = status;
	}

	public int getCheckDay() {
		return checkDay;
	}

	public void setCheckDay(int checkDay) {
		this.checkDay = checkDay;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(String isAdmin) {
		this.isAdmin = isAdmin;
	}

	public String getAttendanceDate() {
		return attendanceDate;
	}

	public void setAttendanceDate(String attendanceDate) {
		this.attendanceDate = attendanceDate;
	}

	public String getAttendanceDay() {
		return attendanceDay;
	}

	public void setAttendanceDay(String attendanceDay) {
		this.attendanceDay = attendanceDay;
	}

	@Override
	public String toString() {
		return "Users [usersNo=" + usersNo + ", usersId=" + usersId + ", usersPw=" + usersPw + ", checkPw=" + checkPw
				+ ", hintPw=" + hintPw + ", usersName=" + usersName + ", nickName=" + nickName + ", email=" + email
				+ ", phone=" + phone + ", enrollDate=" + enrollDate + ", exitDate=" + exitDate + ", status=" + status
				+ ", checkDay=" + checkDay + ", point=" + point + ", isAdmin=" + isAdmin + ", attendanceDate="
				+ attendanceDate + ", attendanceDay=" + attendanceDay + "]";
	}

	
	
	
	
}	
