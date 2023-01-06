package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Employee;
import com.example.demo.model.Project;
import com.example.demo.repository.EmployeeRepository;
import com.example.demo.repository.ProjectRepository;

@Controller
public class ProjectController {
	
	@Autowired
	ProjectRepository projectrepository;
	@Autowired
	EmployeeRepository repository;
	@RequestMapping("/addprojectbutton")
	public ModelAndView Applyforleave (HttpServletRequest request) {
		
        List<Employee> employee=repository.findAll();
		ModelAndView mv =new ModelAndView();
		mv.setViewName("addproject.jsp");
		mv.addObject("employee",employee);
		return mv;		
	}
	

	@GetMapping("/viewprojects")
	public ModelAndView viewProjecty () {
		
		List<Project> project =projectrepository.findByPstatus("true");
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("viewprojects.jsp");
		modelAndView.addObject("project",project);

		return  modelAndView;
		
		
		
	

}
	@GetMapping("/addproject")
	public ModelAndView addProject (Project project,HttpSession session) {
		try {
		project.setPstatus("true");
		projectrepository.save(project);
		return new ModelAndView("/viewprojects");
} catch (Exception e) {
		
	    session.setAttribute ("errorMessagep", "Project has already assigned for this employee .");
	    List<Employee> employee=repository.findAll();
		ModelAndView mv =new ModelAndView();
		mv.setViewName("addproject.jsp");
		mv.addObject("employee",employee);
		return mv;
	}
	}
	

	
	@GetMapping("/pdelete")
	public ModelAndView deleteEmployee (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Project project= projectrepository.getReferenceById(id);
		project.setPstatus("false");
		projectrepository.save(project);
		return new ModelAndView("redirect:/viewprojects");
	}
	
	@GetMapping("/viewprojectemployee")
	public ModelAndView viewProjectEmp(HttpServletRequest req) {
		int empid=Integer.parseInt(req.getParameter("id"));
		Employee employee=repository.getReferenceById(empid);
		String name=employee.getName();
		List<Project> project=projectrepository.findByAsignedemployees(name);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("viewprojectforemployee.jsp");
		mv.addObject("project",project);
		return mv;
	}
	
	@GetMapping("/viewprojectmanager")
	public ModelAndView viewProjectmanager(HttpServletRequest req) {
		int empid=Integer.parseInt(req.getParameter("id"));
		Employee employee=repository.getReferenceById(empid);
		String name=employee.getName();
		List<Project> project=projectrepository.findByAsignedemployees(name);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("viewprojectformanager.jsp");
		mv.addObject("project",project);
		return mv;
	}
}
