package cn.lm1234.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lm1234.dao.StudentMapper;
import cn.lm1234.domain.Student;
import cn.lm1234.service.StudentService;
@Service("customerService")
@Transactional    //加上事务 ， 防止出现错误
public class StudentServiceimpl implements StudentService {
   
	//给studentMapper加上注解 
	@Autowired
	StudentMapper studentmapper;
	
	//调用mapper里的函数
	@Override
	public List<Student> selectAll(int no) {
		return studentmapper.selectAl(no);
	}
	
	@Override
	public Student selectById(int no) {
		// TODO Auto-generated method stub
		return studentmapper.selectById( no);
	}
	
	public void update(Student student)
	{
		studentmapper.update(student);
	}

	@Override
	public void save(Student student) {
		// TODO Auto-generated method stub
		
	}
	
	public void addStudent(Student student)
	{
		studentmapper.addStudent(student);
	}
	
	public void delete(Integer id)
	{
	    studentmapper.deleteById(id);
	}

	@Override
	public int stucount() {
		
		return studentmapper.stucount();
	}
}
