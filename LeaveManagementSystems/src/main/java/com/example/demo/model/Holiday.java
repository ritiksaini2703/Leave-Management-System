package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Holiday {
	
	@Id
	private String hdate;
	private String hday;
	private String hdescription;
	public String getHdate() {
		return hdate;
	}
	public void setHdate(String hdate) {
		this.hdate = hdate;
	}
	public String getHday() {
		return hday;
	}
	public void setHday(String hday) {
		this.hday = hday;
	}
	public String getHdescription() {
		return hdescription;
	}
	public void setHdescription(String hdescription) {
		this.hdescription = hdescription;
	}
	@Override
	public String toString() {
		return "Holiday [hdate=" + hdate + ", hday=" + hday + ", hdescription=" + hdescription + "]";
	}
}
