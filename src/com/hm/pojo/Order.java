package com.hm.pojo;

import java.util.Date;
/**
 * 预约或病人的信息实体类
 *
 */
public class Order {

	private int pid;//病人id
	private String name;//病人姓名
	private Character sex;//病人性别
	private int age;//病人年龄
	private String department;//预约的科室
	private String doctorName;//预约的医生姓名
	private String phone;//病人的电话
	private String orderTime;//预约的看病时间
	private int doctorId;//预约的医生id
	private int status;//预约的状态（1.已预约   2.已看完）
	private int uid;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Character getSex() {
		return sex;
	}
	public void setSex(Character sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public int getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		if(status==0) {
			this.status = 1;
		}else {
			this.status =2;
		}
		
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Order [pid=" + pid + ", name=" + name + ", sex=" + sex + ", age=" + age + ", department=" + department
				+ ", doctorName=" + doctorName + ", phone=" + phone + ", orderTime=" + orderTime + ", doctorId="
				+ doctorId + ", status=" + status + ", uid=" + uid + "]";
	}
	
}
