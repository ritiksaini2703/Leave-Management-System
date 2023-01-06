package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.ApplyLeave;
import com.example.demo.model.Employee;
import com.example.demo.model.Holiday;
import com.example.demo.repository.ApplyLeaveRepository;
import com.example.demo.repository.EmployeeRepository;
import com.example.demo.service.BalanceService;
import com.example.demo.service.SendUserPassMail;

@Controller
public class ApplyLeaveController {
	
	@Autowired
	EmployeeRepository repository;
	@Autowired
	ApplyLeaveRepository leaverepository;
	@Autowired
	SendUserPassMail serviceMail;
	
	
	@RequestMapping("/applyforleave")
	public ModelAndView Applyforleave (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("applyforleaveemployee.jsp");
		mv.addObject("employee",employee);
		return mv;		
	}
	
	@RequestMapping("/applyforleavemanager")
	public ModelAndView ApplyforleaveManager (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("applyforleavemanager.jsp");
		mv.addObject("employee",employee);
		return mv;		
	}

	@GetMapping("/addleave")
	public ModelAndView addLeave ( ApplyLeave applyleave) {
		applyleave.setLeavestatus("Pending");
		//System.out.println("==============================="+applyleave);
		leaverepository.save(applyleave);
		//String leavetype=applyleave.getTypeofleave();
		
		Employee employee = repository.getReferenceById(applyleave.getEmpid());
		serviceMail.sendEmailforleave(applyleave.getName(),employee.getJobtitle(),applyleave.getTypeofleave(),applyleave.getFromdate(), applyleave.getTodate(),employee.getEmail());

		ModelAndView mv =new ModelAndView();
		mv.setViewName("EmployeeDashboard.jsp");
		mv.addObject("employee",employee);
		return mv;
	}
	
	@GetMapping("/addleavemanager")
	public ModelAndView addLeavemanager ( ApplyLeave applyleave) {
		applyleave.setLeavestatus("Pending");
		//System.out.println("==============================="+applyleave);
		leaverepository.save(applyleave);
		Employee employee = repository.getReferenceById(applyleave.getEmpid());
		serviceMail.sendEmailforleave(applyleave.getName(),employee.getJobtitle(),applyleave.getTypeofleave(),applyleave.getFromdate(), applyleave.getTodate(),employee.getEmail());

		ModelAndView mv =new ModelAndView();
		mv.setViewName("ManagerDashboard.jsp");
		mv.addObject("employee",employee);
		return mv;
	}
	
	@GetMapping("/viewleavehistory")
	public ModelAndView viewLeavehistory (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		List<ApplyLeave> applyleave = leaverepository.findByEmpid(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("leavehistoryemployee.jsp");
		mv.addObject("applyleave",applyleave);
		return mv;
	}
	
	@GetMapping("/viewleavehistorymanager")
	public ModelAndView viewLeavehistorymanager (HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		List<ApplyLeave> applyleave = leaverepository.findByEmpid(id);
		ModelAndView mv =new ModelAndView();
		mv.setViewName("leavehistorymanager.jsp");
		mv.addObject("applyleave",applyleave);
		return mv;
	}

	
	@GetMapping("/viewleaverequest")
	public ModelAndView ViewLeaveReuestOfEmployee() {
		List<ApplyLeave> applyleave=leaverepository.findByRoleAndLeavestatus("Employee","Pending");
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ViewAllLeaveRequestForManager.jsp");
		mv.addObject("applyleave",applyleave);
		return mv;
	}
	
	@GetMapping("/viewleaverequestofmanager")
	public ModelAndView viewleaverequestofmanager() {
		List<ApplyLeave> applyleave=leaverepository.findByRoleAndLeavestatus("Manager","Pending");
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ViewAllLeaverequestForAdmin.jsp");
		mv.addObject("applyleave",applyleave);
		return mv;
	}
	

	
	@GetMapping("/approveleaveofemployee")
	public ModelAndView approveLeave(HttpServletRequest request) {
		int lid=Integer.parseInt(request.getParameter("lid"));
		
		ApplyLeave aleave=leaverepository.getReferenceById(lid);
        int empid= aleave.getEmpid();
		Employee bleave=repository.getReferenceById(empid);
	
		BalanceService bservice=new BalanceService();
		bleave=bservice.balanceL(empid,bleave,aleave);
	
		repository.save(bleave);
		serviceMail.sendEmailforleaveApprove(aleave.getFromdate(), aleave.getTodate(), bleave.getEmail());
		return new ModelAndView("/viewleaverequest");
	}
	
	@GetMapping("/approveleaveofManager")
	public ModelAndView approveLeavofManagere(HttpServletRequest request) {
		int lid=Integer.parseInt(request.getParameter("lid"));
		
		ApplyLeave aleave=leaverepository.getReferenceById(lid);
        int empid= aleave.getEmpid();
		Employee bleave=repository.getReferenceById(empid);
	
		BalanceService bservice=new BalanceService();
		bleave=bservice.balanceL(empid,bleave,aleave);
	    
		repository.save(bleave);
		serviceMail.sendEmailforleaveApprove(aleave.getFromdate(), aleave.getTodate(), bleave.getEmail());

		return new ModelAndView("/viewleaverequestofmanager");
	}
	
	@GetMapping("/rejectleaveofemployee")
	public ModelAndView rejectLeave(HttpServletRequest request) {
		int lid=Integer.parseInt(request.getParameter("lid"));
	
		ApplyLeave aleave=leaverepository.getReferenceById(lid);
        int empid= aleave.getEmpid();
		Employee bleave=repository.getReferenceById(empid);

		aleave.setLeavestatus("Rejected");
		repository.save(bleave);
		serviceMail.sendEmailforleaveReject(aleave.getFromdate(), aleave.getTodate(), bleave.getEmail());

		return new ModelAndView("/viewleaverequest");
	}
	
	@GetMapping("/rejectleaveofmanager")
	public ModelAndView rejectLeaveofmanager(HttpServletRequest request) {
		int lid=Integer.parseInt(request.getParameter("lid"));
	
		ApplyLeave aleave=leaverepository.getReferenceById(lid);
        int empid= aleave.getEmpid();
		Employee bleave=repository.getReferenceById(empid);

		aleave.setLeavestatus("Rejected");
		repository.save(bleave);
		serviceMail.sendEmailforleaveReject(aleave.getFromdate(), aleave.getTodate(), bleave.getEmail());

		
		return new ModelAndView("/viewleaverequestofmanager");
	}
	
	@GetMapping("/viewapproverejectformanager")
	public ModelAndView viewapproverejectformanager () {
		
		List<ApplyLeave> applyleave = leaverepository.findByRole("Employee");
		ModelAndView mv =new ModelAndView();
		mv.setViewName("viewapproverejectmanager.jsp");
		mv.addObject("applyleave",applyleave);
		return mv;
	}
	
	@GetMapping("/viewapproverejectforadmin")
	public ModelAndView viewapproverejectforadmin () {
		
		List<ApplyLeave> applyleave = leaverepository.findByRole("Manager");
		ModelAndView mv =new ModelAndView();
		mv.setViewName("viewapproverejectforadmin.jsp");
		mv.addObject("applyleave",applyleave);
		return mv;
	}
	
	
	
	
}
