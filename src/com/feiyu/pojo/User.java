package com.feiyu.pojo;

import java.util.Date;

public class User {
	private int id ;
	private String name ;
	private String uname ;
	private int tel ;
	private String email ;
	private Date date ;
	private String rol ;
	private String upass ;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getRol() {
		return rol;
	}
	public void setRol(String rol) {
		this.rol = rol;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", uname=" + uname + ", name=" + name + ", tel=" + tel + ", email=" + email
				+ ", date=" + date + ", role=" + rol + ", upass=" + upass + "]";
	}
	
	
	
	
 }
