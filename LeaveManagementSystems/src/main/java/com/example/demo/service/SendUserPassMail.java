package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.example.demo.repository.EmployeeRepository;
@Service
public class SendUserPassMail {
	@Autowired
	EmployeeRepository repository;
	
	@Autowired
	JavaMailSender mailSender;
	
	public void sendEmail(String username,String password,String toEmail) {
		
		SimpleMailMessage message =new SimpleMailMessage();
		String emailbody=" Your Employee Account has been Created Successfully..!\n\n Please Login On Employee Portal. \nYour UserName And Password is :\n\n"+"Username : "+username+"\nPassword : "+password;
		message.setFrom("ritik.saini2703@gmail.com");
		message.setTo(toEmail);
		message.setText(emailbody);
		message.setSubject("Welcome To Employee Portal");
		
		mailSender.send(message);
		System.out.println("Mail Sent");
		}
	
public void sendEmailforleave(String name,String jobtitle,String leavetype,String fromdate,String todate,String toEmail) {
		
		SimpleMailMessage message =new SimpleMailMessage();
		//String emailbody=" Your Employee Account has been Created Successfully..!\n\n Please Login On Employee Portal. \nYour UserName And Password is :\n\n"+"Username : "+username+"\nPassword : "+password;
		String emailbody="I am "+name+" working as a "+jobtitle+" .\n\n I request you to kindly approve my "+leavetype+" leave for the duration of "+fromdate+" to "+todate+" as per company policy.";
		message.setFrom("ritik.saini2703@gmail.com");
		message.setTo(toEmail);
		message.setText(emailbody);
		message.setSubject("Regarding To Leave Request");
		
		mailSender.send(message);
		System.out.println("Mail Sent");
		}

public void sendEmailforleaveApprove(String fromdate,String todate,String toEmail) {
	
	SimpleMailMessage message =new SimpleMailMessage();
	String emailbody="I have received your leave request for the duration of "+fromdate+" to "+todate+",.\n\n As of "+fromdate+", your leave request is Approved.";
	message.setFrom("ritik.saini2703@gmail.com");
	message.setTo(toEmail);
	message.setText(emailbody);
	message.setSubject("Regarding To Leave Request");
	
	mailSender.send(message);
	System.out.println("Mail Sent");
	}

public void sendEmailforleaveReject(String fromdate,String todate,String toEmail) {
	
	SimpleMailMessage message =new SimpleMailMessage();
	String emailbody="I have received your leave request for the duration of "+fromdate+" to "+todate+",.\n\n  This letter is to inform you that, Because Of Project Deadline your leave application is Rejected.";
	message.setFrom("ritik.saini2703@gmail.com");
	message.setTo(toEmail);
	message.setText(emailbody);
	message.setSubject("Regarding To Leave Request");
	
	mailSender.send(message);
	System.out.println("Mail Sent");
	}


}