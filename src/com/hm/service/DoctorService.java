package com.hm.service;

import java.util.List;

import com.hm.pojo.Department;
import com.hm.pojo.Doctor;
import com.hm.pojo.Order;
import com.hm.pojo.VistorTime;

public interface DoctorService {

	/**
	 * 根据医生的id查找医生的信息
	 * @param did 医生id
	 * @return  医生对象
	 */
	public Doctor findDoctor(int id);
	
	/**
	 * 根据医生id查询她所属科室的信息
	 * @param id 医生id
	 * @return  科室对象
	 */
	public Department findDepartment(int id);
	
	/**
	 * 根据医生id查询他的出诊信息
	 * @param id
	 * @return 出诊信息集合
	 */
	public List<VistorTime> listVistorTime(int id);
	
	/**
	 * 根据医生名字查询医生的id
	 * @param name
	 * @return
	 */
	public Doctor selectDoctor(String name);
}
