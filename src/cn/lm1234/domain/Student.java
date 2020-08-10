package cn.lm1234.domain;

public class Student {
    private int stuNo;
    private String stuName;
    private int stuAge;
    private String graName;
	public int getStuNo() {
		return stuNo;
	}
	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public int getStuAge() {
		return stuAge;
	}
	public void setStuAge(int stuAge) {
		this.stuAge = stuAge;
	}
	public String getGraName() {
		return graName;
	}
	public void setGraName(String graName) {
		this.graName = graName;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Student [stuNo=" + stuNo + ", stuName=" + stuName + ", stuAge="
				+ stuAge + ", graName=" + graName + "]";
	}
   
}
