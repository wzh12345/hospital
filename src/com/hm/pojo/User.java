package com.hm.pojo;

public class User {

	private int uid;//用户id
	private String uname;//用户名
	private String upassword;//密码
	private String cardId;//身份证id
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getCardId() {
		return cardId;
	}
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upassword=" + upassword + ", cardId=" + cardId + "]";
	}
	
}
