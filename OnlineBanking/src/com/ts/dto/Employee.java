package com.ts.dto;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Employee {
	@Id@GeneratedValue
	private int empId;
	@Column(length=25)
	private String fName;
	@Column(length=25)
	private String lName;
	@Column(length=25)
	private double salary;
	@Column(length=25)
	private String job;
	@Column(length=25)
	private long ePhno;
	@Column(length=25)
	private String userName;
	@Column(length=25)
	private String password;
	@Column(length=25)
	private Date dateOfJoin;
	@Column(length=25)
	private String eEmail;
	
	
	public Employee() {
		super();	
	}
	
	public Employee(String fName, String lName, double salary, String job, long ePhno, String userName, String password, Date dateOfJoin, String eEmail) {
		super();
		this.fName = fName;
		this.lName = lName;
		this.salary = salary;
		this.job = job;
		this.ePhno = ePhno;
		this.userName = userName;
		this.password = password;
		this.dateOfJoin = dateOfJoin;
		this.eEmail = eEmail;
	}
	
	public Employee(int empId, String fName, String lName, double salary, String job, long ePhno, String userName, String password, Date dateOfJoin, String eEmail) {
		super();
		this.empId = empId;
		this.fName = fName;
		this.lName = lName;
		this.salary = salary;
		this.job = job;
		this.ePhno = ePhno;
		this.userName = userName;
		this.password = password;
		this.dateOfJoin = dateOfJoin;
		this.eEmail = eEmail;
	}

	
	
	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", fName=" + fName + ", lName=" + lName + ", salary=" + salary + ", job="
				+ job + ", ePhno=" + ePhno + ", userName=" + userName + ", password=" + password + ", dateOfJoin="
				+ dateOfJoin + ", eEmail=" + eEmail + "]";
	}
	
	public long getePhno() {
		return ePhno;
	}

	public void setePhno(long ePhno) {
		this.ePhno = ePhno;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}
	

	public String geteEmail() {
		return eEmail;
	}

	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getDateOfJoin() {
		return dateOfJoin;
	}
	public void setDateOfJoin(Date dateOfJoin) {
		this.dateOfJoin = dateOfJoin;
	}
}
