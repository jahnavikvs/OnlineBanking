package com.ts.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Customer {
	@Id@GeneratedValue
	private int customerId;
	@Column(length=25)
	private String firstName;
	@Column(length=25)
	private String lastName;
	@Column(length=25)
	private String gender;
	@Column(length=25)
	private String address;
	@Column(length=25)
	private Date dateOfBirth;
	@Column(length=25)
	private long phno;
	@Column(length=25)
	private long aadharNumber;
	@Column(length=25)
	private String userName;
	@Column(length=25)
	private String password;
	@Column(length=25)
	private String hint;
	@OneToMany(mappedBy="customer")
	private List<Accounts> accounts = new ArrayList<Accounts>();
	@OneToMany(mappedBy="customer")
	private List<Beneficiary> beneficiary = new ArrayList<Beneficiary>();
	
	public List<Beneficiary> getBeneficiary() {
		return beneficiary;
	}

	public void setBeneficiary(List<Beneficiary> beneficiary) {
		this.beneficiary = beneficiary;
	}

	public Customer() {
		super();	
	}
	
	public Customer(String firstName, String lastName, String gender, String address, Date dateOfBirth, long phno, long aadharNumber, String userName, String password, String hint) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.address = address;
		this.dateOfBirth = dateOfBirth;
		this.phno = phno;
		this.aadharNumber = aadharNumber;
		this.hint = hint;
		this.userName = userName;
		this.password = password;
	}
	
	public Customer(int customerId,String firstName, String lastName, String gender, String address, Date dateOfBirth, long phno, long aadharNumber,  String userName, String password, String hint) {
		super();
		this.customerId = customerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.address = address;
		this.dateOfBirth = dateOfBirth;
		this.phno = phno;
		this.aadharNumber = aadharNumber;
		this.hint = hint;
		this.userName = userName;
		this.password = password;
	} 
	

	
	
	public String getHint() {
		return hint;
	}

	public void setHint(String hint) {
		this.hint = hint;
	}

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", gender=" + gender + ", address=" + address + ", dateOfBirth=" + dateOfBirth + ", phno=" + phno
				+ ", aadharNumber=" + aadharNumber + ", userName=" + userName + ", password=" + password + ", hint="
				+ hint + "]";
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

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public long getPhno() {
		return phno;
	}

	public void setPhno(long phno) {
		this.phno = phno;
	}

	public long getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(long aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public List<Accounts> getAccounts() {
		return accounts;
	}

	public void setAccounts(List<Accounts> accounts) {
		this.accounts = accounts;
	}
	
}