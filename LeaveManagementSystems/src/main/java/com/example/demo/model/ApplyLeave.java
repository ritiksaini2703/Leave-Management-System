package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ApplyLeave {
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int lid;
	private int empid;
	private String name;
	private String fromdate;
	private String todate;

	private String role;
	private String typeofleave;
	private String description;
	private int totalnumberofdays;
	private String leavestatus;
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}

	public String getTypeofleave() {
		return typeofleave;
	}
	public void setTypeofleave(String typeofleave) {
		this.typeofleave = typeofleave;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getTotalnumberofdays() {
		return totalnumberofdays;
	}
	public void setTotalnumberofdays(int totalnumberofdays) {
		this.totalnumberofdays = totalnumberofdays;
	}
	public String getLeavestatus() {
		return leavestatus;
	}
	public void setLeavestatus(String leavestatus) {
		this.leavestatus = leavestatus;
	}
	@Override
	public String toString() {
		return "ApplyLeave [lid=" + lid + ", empid=" + empid + ", name=" + name + ", fromdate=" + fromdate + ", todate="
				+ todate + ", role=" + role + ", typeofleave=" + typeofleave + ", description=" + description
				+ ", totalnumberofdays=" + totalnumberofdays + ", leavestatus=" + leavestatus + "]";
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}



	

	
	
//	private int sick=15;
//	private int casual=15;
//	private int marriage=15;
//	private int personal=15;
//	private int paternity=25;
//	private int adoption=25;
//	private int maternity=180;
	
	
	

}
