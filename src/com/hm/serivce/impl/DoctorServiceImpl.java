package com.hm.serivce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hm.dao.DoctorMapping;
import com.hm.pojo.Department;
import com.hm.pojo.Doctor;
import com.hm.pojo.Order;
import com.hm.pojo.VistorTime;
import com.hm.service.DoctorService;

@Service
public class DoctorServiceImpl implements DoctorService{
  
	@Autowired
	private DoctorMapping doctorMapping=null;
	
	//设值注入
	public void setDoctorMapping(DoctorMapping doctorMapping) {
		this.doctorMapping = doctorMapping;
	}


	@Override
	public Department findDepartment(int id) {
		// TODO Auto-generated method stub
		return doctorMapping.findDepartment(id);
	}


	@Override
	public Doctor findDoctor(int id) {
		// TODO Auto-generated method stub
		return doctorMapping.findDoctor(id);
	}


	@Override
	public List<VistorTime> listVistorTime(int id) {
		// TODO Auto-generated method stub
		return doctorMapping.listVistorTime(id);
	}


	@Override
	public Doctor selectDoctor(String name) {
		// TODO Auto-generated method stub
		return doctorMapping.selectDoctor(name);
	}

}
