package com.jrw;

/**
 * User
 */
public class User {
	private Integer userid;
	private String firstname;
	private String middlename;
	private String lastname;

	public User() {
	}

	public User(Integer userid, String firstname, String middlename, String lastname) {
		this.userid = userid;
		this.firstname = firstname;
		this.middlename = middlename;
		this.lastname = lastname;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
}
