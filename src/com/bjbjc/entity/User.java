package com.bjbjc.entity;

public class User {
	private int id;
	private String username;
	private String u_password;
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
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", u_password=" + u_password + "]";
	}
	

}
