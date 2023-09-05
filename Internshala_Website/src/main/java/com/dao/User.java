package com.dao;

import java.util.Arrays;
import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Table;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

@Entity
@Table(name = "empdata")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	String firstname;
	String lastname;
	String number;
	String email;
	String date ;
	String gender ;
	String address;
	String country;
	String city;
	

	 @ElementCollection
	    @CollectionTable(name = "employee_skills", joinColumns = @JoinColumn(name = "employee_id"))
	    @Column(name = "skill")
	List<String> skills;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User( String firstname, String lastname, String number, String email, String date, String gender,
			String address, String country, String city, List<String> skills) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.number = number;
		this.email = email;
		this.date = date;
		this.gender = gender;
		this.address = address;
		this.country = country;
		this.city = city;
		this.skills = skills;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public List<String> getSkills() {
		return skills;
	}
	public void setSkills(List<String> skills) {
		this.skills = skills;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", number=" + number
				+ ", email=" + email + ", date=" + date + ", gender=" + gender + ", address=" + address + ", country="
				+ country + ", city=" + city + ", skills=" + skills + "]";
	}
	
	
	
}
