package com.bc.vo;

import java.util.Date;

public class UsersVO {
	private String user_id;
	private String name;
	private Date birth;
	private int gender;
	private String phone;
	private String Address;
	private String email;
	private String pass_hash;
	
	public UsersVO() {
	}

	public UsersVO(String user_id, String name, Date birth, int gender, String phone, String address, String email,
			String pass_hash) {
		super();
		this.user_id = user_id;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.phone = phone;
		Address = address;
		this.email = email;
		this.pass_hash = pass_hash;
	}

	@Override
	public String toString() {
		return "UsersVO [user_id=" + user_id + ", name=" + name + ", birth=" + birth + ", gender=" + gender + ", phone="
				+ phone + ", Address=" + Address + ", email=" + email + ", pass_hash=" + pass_hash + "]";
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass_hash() {
		return pass_hash;
	}

	public void setPass_hash(String pass_hash) {
		this.pass_hash = pass_hash;
	}

	
}
