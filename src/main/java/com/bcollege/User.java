package com.bcollege;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="user")
public class User {
	
	public User(String email, String password, String name) {
		this.email = email;
		this.password = password;
		this.name = name;
	}
	public User() {
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	
	@Id
	@Email(message="Enter a valid Email address")
	String email;
	@Size(min=4,max=10, message="Minimum 4 character password required")
	String password;
	@Size(min=3,max=20, message="Minimum 4 character name required")
	String name;

}
