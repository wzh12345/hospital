package com.hm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hm.pojo.Department;
import com.hm.pojo.Doctor;
import com.hm.serivce.impl.DepartmentSerivceImpl;

@Controller
public class DepartmentController {

	@Autowired
	DepartmentSerivceImpl departmentServiceImpl=null;
	
	/**
	 * 根据科室id查询出对应科室的信息以及医生的信息
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/Departmentsintroduce")
	public void HandlerSelectDepartments(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String id=request.getParameter("departmentId");
		/*System.out.println(id);*/
		Department department=departmentServiceImpl.findByDepartmentId(Integer.parseInt(id));
		List<Doctor> listDoctor=departmentServiceImpl.findDoctorByDepartmentId(Integer.parseInt(id));
		/*System.out.println(department);
		System.out.println(listDoctor);*/
		request.setAttribute("department", department);
		request.setAttribute("listDoctor", listDoctor);
		request.getRequestDispatcher("jsp/Departmentsintroduce.jsp").forward(request, response);
		/*return "Departmentsintroduce";*/
	}
	
/*	@RequestMapping("showDepartment")
	public String showDepartmentHandler() {
		return "department";
	}*/
}
