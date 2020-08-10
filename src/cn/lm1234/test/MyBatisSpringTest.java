package cn.lm1234.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;




import cn.lm1234.domain.Student;
import cn.lm1234.service.StudentService;
import cn.sm1234.domain.Customer;
import cn.sm1234.service.CustomerService;


public class MyBatisSpringTest {
/*
	@Test
	public void test(){
		//1.加载spring配置
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		CustomerService customerService = (CustomerService)ac.getBean("customerService");
		
		Customer customer = new Customer();
		customer.setName("li66666");
		customer.setGender("nan");
		customer.setTelephone("020-555555");
		customer.setAddress("GUANGDONG PROVINCE");
		customerService.saveCustomer(customer);
	}*/
	//一定要一步步来整合 不要求快
	@Test
	public static int test1(){
		//1.加载spring配置
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		StudentService studentservice = (StudentService)ac.getBean("customerService");
		
		  List<Student> students=new ArrayList<Student>();
		  students=studentservice.selectAll(1);
	   //    for(Student student:students) 
	   //     System.out.println(student);	       
	         int n=studentservice.stucount();
	 
	      return n;
	}
	
	
	
}
