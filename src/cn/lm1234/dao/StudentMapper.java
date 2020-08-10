package cn.lm1234.dao;

import java.util.List;

import cn.lm1234.domain.Student;

public interface StudentMapper {
     
	public List<Student> selectAl(int n);

	public Student selectById(int stuNo);

	public void update(Student student);

	public void addStudent(Student student);

	public void deleteById(int id);  
	 
	public int stucount();
}
