package cn.lm1234.controller;

import java.util.Collection;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;




import cn.lm1234.domain.Student;
import cn.lm1234.service.StudentService;


@Controller
public class StudentController {
	@Autowired
   StudentService  studentService;
	
  
	
	@RequestMapping("/input")
	public   String list(Model model){
		//查询数据
		int page=1;
		Collection<Student> all= studentService.selectAll(page*4-4);
		model.addAttribute("emps", all);
		return "list1";	
	}
	
	@RequestMapping("/input/{p}")
	public   String list(@PathVariable("p")Integer p,Model model){
		//查询数据
		 int number=studentService.stucount();	   
		Collection<Student> all= studentService.selectAll(p*4-4);
		model.addAttribute("num", number);		
		model.addAttribute("emps", all);
		return "list1";	
	}
	
	@RequestMapping(value="/emps/{stuNo}",method=RequestMethod.GET)
	public String SelectById(@PathVariable("stuNo")Integer stuNo,Model model)
	{
		      Student student = studentService.selectById(stuNo);
		      model.addAttribute("student", student);
		      return  "edit";
	}
   
	@RequestMapping(value="/emp/{stuNo}",method=RequestMethod.POST)
	public String updateEmp(@ModelAttribute("student")Student student)
	{
		System.out.println("要修改的员工"+student);
		studentService.update(student);
		return "redirect:/input";
	}
	
	@RequestMapping("toaddpage")
	public String toAddPage(Model model)
	{
		  model.addAttribute("student",new Student() );
		//3 去添加页面
 		return "add";
	}
	
	@RequestMapping(value="/emp",method=RequestMethod.POST)
	public String up(@ModelAttribute("student")Student student)
	{
		System.out.println("要添加的员工"+student);
		studentService.addStudent(student);
		return "redirect:/input";
	}
	
	@RequestMapping(value="/emps/{id}",method=RequestMethod.POST)
	public String deleteEmp(@PathVariable("id")Integer id)
	{
		studentService.delete(id);
		return "redirect:/input";
	}
	
	
}
