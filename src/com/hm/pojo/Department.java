package com.hm.pojo;

/**
 * 科室实体类
 *
 */
public class Department {
	private int departmentId;// 科室id
	private String departmentName;// 科室名称
	private String departmentRecommend;// 科室简介
	private String photoDepartment;//科室照片
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getDepartmentRecommend() {
		return departmentRecommend;
	}
	public void setDepartmentRecommend(String departmentRecommend) {
		this.departmentRecommend = departmentRecommend;
	}
	public String getPhotoDepartment() {
		return photoDepartment;
	}
	public void setPhotoDepartment(String photoDepartment) {
		this.photoDepartment = photoDepartment;
	}
	

	

}
