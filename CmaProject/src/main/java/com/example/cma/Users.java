package com.example.cma;

public class Users {
	private int cid;
	private String cFName;
	private String cLName;
	private String cEmail;
	private String CUsername;
	private String CPass;
	
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	
	
	public String getcFName() {
		return cFName;
	}
	public void setcFName(String cFName) {
		this.cFName = cFName;
	}
	
	
	public String getcLName() {
		return cLName;
	}
	public void setcLName(String cLName) {
		this.cLName = cLName;
	}
	
	
	public String getcEmail() {
		return cEmail;
	}
	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}
	
	
	public String getCUsername() {
		return CUsername;
	}
	public void setCUsername(String cUsername) {
		CUsername = cUsername;
	}
	
	
	public String getCPass() {
		return CPass;
	}
	public void setCPass(String cPass) {
		CPass = cPass;
	}
	
	
	@Override
	public String toString() {
		return "Users [cid=" + cid + ", cFName=" + cFName + ", cLName=" + cLName + ", cEmail=" + cEmail + ", CUsername=" + CUsername + ", CPass=" + CPass + "]";
	}
}
