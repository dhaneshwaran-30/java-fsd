
package com.simplilearn.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class User {
	@Id
	private String name;
	private String password;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "User [name=" + name + ", password=" + password + "]";
	}	
}
