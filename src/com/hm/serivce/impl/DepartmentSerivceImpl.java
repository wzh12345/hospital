package com.hm.serivce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hm.dao.DepartmentMapping;
import com.hm.pojo.Department;
import com.hm.pojo.Doctor;
import com.hm.service.DepartmentService;

@Service
public class DepartmentSerivceImpl implements DepartmentService {

	@Autowired
	private DepartmentMapping departmentMapping=null;
	
	//设值注入
	public void setDepartmentMapping(DepartmentMapping departmentMapping) {
		this.departmentMapping = departmentMapping;
	}

	@Override
	public Department findByDepartmentId(int departmentId) {
		// TODO Auto-generated method stub
		return departmentMapping.findByDepartmentId(departmentId);
	}

	@Override
	public List<Doctor> findDoctorByDepartmentId(int departmentId) {
		// TODO Auto-generated method stub
		return departmentMapping.findDoctorByDepartmentId(departmentId);
	}

	@Override
	public Department findDepartment(String departmentName) {
		// TODO Auto-generated method stub
		return departmentMapping.findDepartment(departmentName);
	}

}
