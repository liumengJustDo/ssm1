package cn.lm1234.service;

import java.util.List;

import cn.lm1234.domain.Student;

public interface StudentService {
    public List<Student> selectAll(int no);

	public Student selectById(int no);

	public void save(Student student);

	public void update(Student student);

	public void addStudent(Student student);

	public void delete(Integer id);
	
	public int stucount();
}
