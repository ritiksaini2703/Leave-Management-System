package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Project {
	
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int projectid;
	private String projectname;
	private String projectdescription;
	private String projectstartdate;
	private String projectdeadline;
    private String asignedemployees;
    private String projectstatus;
    private String pstatus;
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public String getProjectdescription() {
		return projectdescription;
	}
	public void setProjectdescription(String projectdescription) {
		this.projectdescription = projectdescription;
	}
	public String getProjectstartdate() {
		return projectstartdate;
	}
	public void setProjectstartdate(String projectstartdate) {
		this.projectstartdate = projectstartdate;
	}
	public String getProjectdeadline() {
		return projectdeadline;
	}
	public void setProjectdeadline(String projectdeadline) {
		this.projectdeadline = projectdeadline;
	}
	public String getAsignedemployees() {
		return asignedemployees;
	}
	public void setAsignedemployees(String asignedemployees) {
		this.asignedemployees = asignedemployees;
	}
	public String getProjectstatus() {
		return projectstatus;
	}
	public void setProjectstatus(String projectstatus) {
		this.projectstatus = projectstatus;
	}
	@Override
	public String toString() {
		return "Project [projectid=" + projectid + ", projectname=" + projectname + ", projectdescription="
				+ projectdescription + ", projectstartdate=" + projectstartdate + ", projectdeadline=" + projectdeadline
				+ ", asignedemployees=" + asignedemployees + ", projectstatus=" + projectstatus + ", pstatus=" + pstatus
				+ "]";
	}
	public String getPstatus() {
		return pstatus;
	}
	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}
	public int getProjectid() {
		return projectid;
	}
	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}

    
    
}
