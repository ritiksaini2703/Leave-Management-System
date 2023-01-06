package com.example.demo.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Employee;
import com.example.demo.model.Holiday;
import com.example.demo.repository.EmployeeRepository;
import com.example.demo.repository.HolidayRepository;

@Controller
public class HolidayController {
	
	@Autowired
	HolidayRepository holidayrepository;
	@Autowired
	EmployeeRepository repository;
	

	
	
	@GetMapping("/addholiday")
	public ModelAndView addholiday ( Holiday holiday) {
		holidayrepository.save(holiday);
		return new ModelAndView("/viewholidaysadmin");
		
	}
	

	@GetMapping("/viewholidays")
	public ModelAndView viewHoliday (HttpServletRequest request) {
		
		List<Holiday> holiday =holidayrepository.findAll();
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("viewholidayemployee.jsp");
         modelAndView.addObject("holiday",holiday);
        modelAndView.addObject("employee",employee);

		return  modelAndView;
	}
	@GetMapping("/viewholidaysadmin")
	public ModelAndView viewHolidayadmin (HttpServletRequest request) {
		
		List<Holiday> holiday =holidayrepository.findAll();
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("viewholidayforadmin.jsp");
         modelAndView.addObject("holiday",holiday);

		return  modelAndView;
	}
	
	@GetMapping("/viewholidaysmanager")
	public ModelAndView viewHolidayManager (HttpServletRequest request) {
		
		List<Holiday> holiday =holidayrepository.findAll();
		int id = Integer.parseInt(request.getParameter("id"));
		Employee employee = repository.getReferenceById(id);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("viewholidaymanager.jsp");
         modelAndView.addObject("holiday",holiday);
        modelAndView.addObject("employee",employee);

		return  modelAndView;
	}

}
