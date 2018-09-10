package com.hm.service;

import java.util.List;

import com.hm.pojo.Department;
import com.hm.pojo.Doctor;

public interface DepartmentService {

	/**
	 * 根据科室id查出对应科室的信息
	 * @param id  科室id
	 * @return  科室对象
	 */
	public Department findByDepartmentId(int departmentId);
	
	/**
	 * 根据科室id查出这个科室有哪些医生
	 * @param DepartmentId 科室id
	 * @return 医生集合对象
	 */
	public List<Doctor> findDoctorByDepartmentId(int departmentId);
	
	/**
	 * 根据科室名查找科室
	 * @param departmentName
	 * @return
	 */
	public Department findDepartment(String departmentName);
}
