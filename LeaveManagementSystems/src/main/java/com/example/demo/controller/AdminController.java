package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.model.Employee;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.EmployeeRepository;



@Controller
public class AdminController {
	@Autowired
	EmployeeRepository repository;
	@Autowired
	AdminRepository adminrepository;

	@GetMapping("/")
	public ModelAndView startPage() {
		ModelAndView mv=new ModelAndView("home.jsp");
		return mv;		
	}
	@PostMapping("/login")
	public ModelAndView login(@RequestParam("username") String username,@RequestParam("password") String password, HttpSession session) {
	
		List<Admin> users=adminrepository.findByUsernameAndPassword(username, password);
		if(users.isEmpty()) {
			session.setAttribute("message", "*Invalid Credentials");

			return new ModelAndView("login.jsp");
		}else {
			session.setAttribute("username", username);
			return new ModelAndView("dashboard.jsp");
		}
	}
	
//	@GetMapping("/employeelogin")
//	public ModelAndView loginemployee(@RequestParam("username") String username,@RequestParam("password") String passsword, HttpSession session,HttpServletRequest request) {
//		Employee profile= repository.getRefrencedByPassword(passsword);
//		List<Employee> users=repository.findByUsernameAndPassword(username, passsword);
//		ModelAndView mv= new ModelAndView();
//		if(users.isEmpty()) {
//			return new ModelAndView("employeelogin.jsp");
//		}else {
//			if((profile.getStatus()).equals("true")) {
//				session.setAttribute("username", username);
//				return new ModelAndView("resetpassword.jsp");
//			}
//			else {
//				System.out.println("Login Successful.!");
//				session.setAttribute("username", username);
//				mv.setViewName("profile.jsp");
//				mv.addObject("employee", profile);
//				return mv ;
//			}
//
//		}
//	}
	
	@PostMapping("/employeelogin")
	public ModelAndView loginUser(@RequestParam("username") String username,@RequestParam("password") String password,HttpSession session) {
		ModelAndView mv=new ModelAndView();
		Employee employee=repository.getReferenceByUsernameAndPassword(username,password);
		System.out.println(employee);
		if(employee==null) {
			System.out.println("==============Invalid");
			session.setAttribute("message", "*Invalid Credentials");
			mv.setViewName("employeelogin.jsp");
			return mv;
		}
//		else {
//				if((employee.getJobtitle()).equals("Admin")) {
//				mv.setViewName("AdminDashboard.jsp");
//				mv.addObject("employee",employee);
//				return mv;
//			}
			else if((employee.getRole()).equals("Employee")) {
				session.setAttribute("id",employee.getId());
				mv.setViewName("EmployeeDashboard.jsp");
				mv.addObject("employee",employee);
				return mv;
				
			}
			else if((employee.getRole()).equals("Manager")) {
				session.setAttribute("id",employee.getId());

				mv.setViewName("ManagerDashboard.jsp");
				mv.addObject("employee",employee);
				return mv;
			}
			else {
				return new ModelAndView("employeelogin.jsp");
			}
		}
	
	
	@PostMapping("/resetpass")
	public ModelAndView updateEmployee (HttpServletRequest request,HttpSession session) {
		
		ModelAndView mv =new ModelAndView();
		String passwordo=request.getParameter("passwordo");

		String password=request.getParameter("passwordn");
		Employee employee = repository.getRefrencedByPassword(passwordo);
		if (employee==null) {
			session.setAttribute("message", "*Your old Password is not Correct");
			mv.setViewName("resetpassword.jsp");
			return mv;
		}
		employee.setPassword(password);
		employee.setSick(employee.getSick());
		employee.setCasual(employee.getCasual());
		employee.setPersonal(employee.getPersonal());
		employee.setPaternity(employee.getPaternity());
		employee.setMaternity(employee.getMaternity());
		employee.setMarriage(employee.getMarriage());
		employee.setAdoption(employee.getAdoption());
		repository.save(employee);
		
		mv.setViewName("EmployeeDashboard.jsp");
		mv.addObject("employee",employee);
		return mv;
	}
	
	@PostMapping("/resetpassmanager")
	public ModelAndView updateEmployeemanager (HttpServletRequest request,HttpSession session) {
		
		ModelAndView mv =new ModelAndView();
		String passwordo=request.getParameter("passwordo");

		String password=request.getParameter("passwordn");
		Employee employee = repository.getRefrencedByPassword(passwordo);
		if (employee==null) {
			session.setAttribute("message", "*Your old Password is not Correct");
			mv.setViewName("resetpasswordmanager.jsp");
			//mv.addObject(employee);
			return mv;
		}else {

		employee.setPassword(password);
		employee.setSick(employee.getSick());
		employee.setCasual(employee.getCasual());
		employee.setPersonal(employee.getPersonal());
		employee.setPaternity(employee.getPaternity());
		employee.setMaternity(employee.getMaternity());
		employee.setMarriage(employee.getMarriage());
		employee.setAdoption(employee.getAdoption());
		repository.save(employee);
		
		mv.setViewName("ManagerDashboard.jsp");
		mv.addObject("employee",employee);
		return mv;
	}}
	
	@RequestMapping("/viewresetpass")
	public ModelAndView viewEmployeepass (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("resetpassword.jsp");
		mv.addObject("employee",employee);
		return mv;		
	}
	
	@RequestMapping("/viewresetpassmanager")
	public ModelAndView viewEmployeepassmanager (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("resetpasswordmanager.jsp");
		mv.addObject("employee",employee);
		return mv;		
	}
	@RequestMapping("/view")
	public ModelAndView viewEmployee (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("profile.jsp");
		mv.addObject("employee",employee);
		return mv;		
	}
}
