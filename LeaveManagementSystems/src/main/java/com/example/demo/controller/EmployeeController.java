package com.example.demo.controller;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.model.Employee;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.EmployeeRepository;
import com.example.demo.service.EmployeeService;
import com.example.demo.service.SendUserPassMail;



@Controller
public class EmployeeController {
	@Autowired
	EmployeeRepository repository;
	@Autowired
	SendUserPassMail serviceMail;
	@Autowired
	AdminRepository adminrepository; 
	
	
	@GetMapping("/add")
	public ModelAndView addemployee ( Employee employee, HttpServletRequest request,HttpSession session) {
		ModelAndView mv= new ModelAndView();
		try {
		EmployeeService service = new EmployeeService();
		String password=service.generatePassword();
		employee.setPassword(password);
		String username=service.genrateUsername(employee.getName(), employee.getPhone());
		employee.setUsername(username);
		employee.setStatus("true");
		
		employee.setSick(15);
		employee.setCasual(15);
		employee.setPersonal(15);
		employee.setPaternity(30);
		employee.setMaternity(180);
		employee.setMarriage(15);
		employee.setAdoption(30);
		repository.save(employee);
		serviceMail.sendEmail(username, password, employee.getEmail());
		
		return new ModelAndView("/viewemployees");
		
	} catch (Exception e) {
		
	    session.setAttribute ("errorMessage", "This email already exists. Please check the values and try again.");
		return new ModelAndView("employee.jsp");
	}
	
}

	
	
	
	
	
	
	
	@GetMapping("/addadmin")
	public ModelAndView addAdmin ( Admin admin) {
		
		adminrepository.save(admin);
		return new ModelAndView("/login");
	}
	@GetMapping("/viewemployees")
	public ModelAndView viewEmployee () {
		
		List<Employee> employee =repository.findByStatus("true");
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("viewemployees.jsp");
		modelAndView.addObject("employee",employee);

		return  modelAndView;
	}
	@GetMapping("/edit")
	public String editEmployee (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		request.setAttribute("employee", employee);
		return "update.jsp";
	}
	
	@GetMapping("/update")
	public ModelAndView updateEmployee (Employee employee,HttpSession session) {
		
		Employee currentData = repository.getReferenceById(employee.getId());
		ModelAndView mv = new ModelAndView();
		try {
		System.out.println(currentData);
		employee.setStatus(currentData.getStatus());
		employee.setPassword(currentData.getPassword());
		employee.setSick(15);
		employee.setCasual(15);
		employee.setPersonal(15);
		employee.setPaternity(30);
		employee.setMaternity(180);
		employee.setMarriage(15);
		employee.setAdoption(30);
		repository.save(employee);
		return new ModelAndView("redirect:/viewemployees");
	} catch (Exception e) {
		
	    session.setAttribute ("errorMessage", "This email already exists. Please check the values and try again.");
		return new ModelAndView("update.jsp");
	}
	}
	
	@RequestMapping("/viewProfile")
	public ModelAndView viewEmployee (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("EmployeeProfile.jsp");
		mv.addObject("employee",employee);
		return mv;		
	}
	
	@RequestMapping("/viewProfileManager")
	public ModelAndView viewManager (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("ManagerProfile.jsp");
		mv.addObject("employee",employee);
		return mv;		
	}
	
	@RequestMapping("/viewEmployeeDashboard")
	public ModelAndView viewEmployeeDashboard (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("EmployeeDashboard.jsp");
		mv.addObject("employee",employee);
		return mv;		
	}
	@RequestMapping("/viewManagerDashboard")
	public ModelAndView viewManagerDashboard (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("ManagerDashboard.jsp");
		mv.addObject("employee",employee);
		return mv;		
	}
	
	
	@GetMapping("/delete")
	public ModelAndView deleteEmployee (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		employee.setStatus("false");
		repository.save(employee);
		return new ModelAndView("redirect:/viewemployees");
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		if (session != null) {
			session.invalidate();
		}
		return "login.jsp";
	}
}
