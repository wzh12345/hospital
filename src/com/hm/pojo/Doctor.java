package com.hm.pojo;

import java.util.List;

/**
 * 医生实体
 *
 */
public class Doctor {
	private int id;// 医生id
	private String name;// 医生姓名
	private char sex;// 医生性别
	private String titel;// 医生职位、称号
	private String good;// 医生擅长
	private String introduce;// 医生介绍
	private String details;// 医生详细介绍
	private String departmentId;// 医生所属科室的id
	private String photodoctor;//照片地址
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	public String getTitel() {
		return titel;
	}
	public void setTitel(String titel) {
		this.titel = titel;
	}
	public String getGood() {
		return good;
	}
	public void setGood(String good) {
		this.good = good;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	public String getPhotodoctor() {
		return photodoctor;
	}
	public void setPhotodoctor(String photodoctor) {
		this.photodoctor = photodoctor;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Doctor [id=" + id + ", name=" + name + ", sex=" + sex + ", titel=" + titel + ", good=" + good
				+ ", introduce=" + introduce + ", details=" + details + ", departmentId=" + departmentId
				+ ", photodoctor=" + photodoctor +  "]";
	}

}
