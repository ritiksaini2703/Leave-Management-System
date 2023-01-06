package com.example.demo.model;





import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee {
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
    private int id;
	private String username;
    private String password;
	private String name;
    private String email;
	private String phone;
	private String gender;
	private String dob;
	private String address;
	private String country;
	private String type;
	private String jobtitle;
	private String role;
	private String status;
	
	private int sick;
	private int casual;
	private int marriage;
	private int personal;
	private int paternity;
	private int adoption;
	private int maternity;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getJobtitle() {
		return jobtitle;
	}
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getSick() {
		return sick;
	}
	public void setSick(int sick) {
		this.sick = sick;
	}
	public int getCasual() {
		return casual;
	}
	public void setCasual(int casual) {
		this.casual = casual;
	}
	public int getMarriage() {
		return marriage;
	}
	public void setMarriage(int marriage) {
		this.marriage = marriage;
	}
	public int getPersonal() {
		return personal;
	}
	public void setPersonal(int personal) {
		this.personal = personal;
	}
	public int getPaternity() {
		return paternity;
	}
	public void setPaternity(int paternity) {
		this.paternity = paternity;
	}
	public int getAdoption() {
		return adoption;
	}
	public void setAdoption(int adoption) {
		this.adoption = adoption;
	}
	public int getMaternity() {
		return maternity;
	}
	public void setMaternity(int maternity) {
		this.maternity = maternity;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", username=" + username + ", password=" + password + ", name=" + name
				+ ", email=" + email + ", phone=" + phone + ", gender=" + gender + ", dob=" + dob + ", address="
				+ address + ", country=" + country + ", type=" + type + ", jobtitle=" + jobtitle + ", role=" + role
				+ ", status=" + status + ", sick=" + sick + ", casual=" + casual + ", marriage=" + marriage
				+ ", personal=" + personal + ", paternity=" + paternity + ", adoption=" + adoption + ", maternity="
				+ maternity + "]";
	}
	
}
