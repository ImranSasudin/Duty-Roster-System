package dutyroster.model;

public class MemberBean {
	String studentId,studentName,studentAddress,studentPhone,studentPosition,studentCgpa,studentPassword;
	boolean valid;
	
	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentAddress() {
		return studentAddress;
	}

	public void setStudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}

	public String getStudentPhone() {
		return studentPhone;
	}

	public void setStudentPhone(String studentPhone) {
		this.studentPhone = studentPhone;
	}

	public String getStudentPosition() {
		return studentPosition;
	}

	public void setStudentPosition(String studentPosition) {
		this.studentPosition = studentPosition;
	}

	public String getStudentCgpa() {
		return studentCgpa;
	}

	public void setStudentCgpa(String studentCgpa) {
		this.studentCgpa = studentCgpa;
	}

	public String getStudentPassword() {
		return studentPassword;
	}

	public void setStudentPassword(String studentPassword) {
		this.studentPassword = studentPassword;
	}
	
	public boolean isValid() {
		return valid;
	}
	
	public void setValid(boolean valid) {
		this.valid = valid;
		
	}
}
