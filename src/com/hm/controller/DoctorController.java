package com.hm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hm.pojo.Department;
import com.hm.pojo.Doctor;
import com.hm.pojo.Order;
import com.hm.pojo.VistorTime;
import com.hm.serivce.impl.DepartmentSerivceImpl;
import com.hm.serivce.impl.DoctorServiceImpl;

@Controller
public class DoctorController {

	@Autowired
	private DoctorServiceImpl doctorServiceImpl=null;

	/**
	 * 根据医生id查询出对应医生的信息、出诊信息以及所属科室的信息
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/Doctor")
	public void HandlerSelectDepartments(HttpServletRequest request, HttpServletResponse response) throws Exception{
	   String id=request.getParameter("id");
	   Doctor doctor=doctorServiceImpl.findDoctor(Integer.parseInt(id));
	   Department department=doctorServiceImpl.findDepartment(Integer.parseInt(id));
	   List<VistorTime> listVistorTime=doctorServiceImpl.listVistorTime(Integer.parseInt(id));
	  /* System.out.println(doctor);*/
	   request.setAttribute("doctor", doctor);
	   request.setAttribute("department", department);
	   request.setAttribute("listVistorTime", listVistorTime);
	   request.getRequestDispatcher("jsp/doctor.jsp").forward(request, response);
	   /*return "doctor";*/
	}
	
	@RequestMapping("showDepartment")
	public String showDepartmentHandler() {
		return "department";
	}
	
}
