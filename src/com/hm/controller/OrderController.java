package com.hm.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hm.pojo.Department;
import com.hm.pojo.Doctor;
import com.hm.pojo.Order;
import com.hm.pojo.User;
import com.hm.pojo.VistorTime;
import com.hm.serivce.impl.DepartmentSerivceImpl;
import com.hm.serivce.impl.DoctorServiceImpl;
import com.hm.serivce.impl.OrderServiceImpl;
import com.hm.serivce.impl.UserServiceImpl;

import net.sf.json.JSON;
import net.sf.json.JSONArray;

@Controller
public class OrderController {

	@Autowired
	private OrderServiceImpl orderServiceImpl;
	@Autowired
	private DoctorServiceImpl doctorServiceImpl;
	@Autowired
	private DepartmentSerivceImpl department;
	@Autowired
	private UserServiceImpl userservice;
	
	//预约
	@RequestMapping("order")
	public String HandlerOrder(Order order,HttpServletRequest request, HttpServletResponse response) throws Exception{
		String cardId=(String)request.getSession().getAttribute("cardId");
		User user=userservice.selectUserByCardId(cardId);
		/*System.out.println(user);
		System.out.println(order.getDoctorName());*/
		Doctor doctor=doctorServiceImpl.selectDoctor(order.getDoctorName());
		/*System.out.println(doctor);*/
		order.setAge(order.getAge());
		order.setDepartment(order.getDepartment());
		order.setSex(order.getSex());
		order.setDoctorId(doctor.getId());
		/*System.out.println(doctor.getId());*/
		order.setUid(user.getUid());
		/*System.out.println(order);*/
		int num=orderServiceImpl.insertUser(order);
		/*System.out.println(num);*/
		if(num>0) {
			request.getRequestDispatcher("selectorder.action").forward(request, response);
		}
		return null;
	}
	
	//查询出用户预约的信息
	@RequestMapping("selectorder")
	public String HandlerSelectOrder(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String cardId=(String)request.getSession().getAttribute("cardId");
		User use=userservice.selectUserByCardId(cardId);
		List<Order> order=orderServiceImpl.selectUser(use.getUid());
		/*System.out.println(order);*/
		request.setAttribute("order", order);
		return "orderinfo";	
	}
	
	//改变预约状态
	@RequestMapping("change")
	public String HandlerSelect(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String id=request.getParameter("pid");
		System.out.println(id);
		int num=orderServiceImpl.changeStatus(Integer.parseInt(id));
		if(num>0) {
			request.getRequestDispatcher("selectpatient.action").forward(request, response);
		}
		return null;			
	}
	
	//从前端传回科室的名称查找所属科室的所有医生
	@RequestMapping("findDoctor")
	public void HandlerSelectDoctor (HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("text");
		System.out.println(name);
		//通过科室名找到科室id
		Department depart=department.findDepartment(name);
		//通过科室id找到对应的医生
		List<Doctor> doctor=department.findDoctorByDepartmentId(depart.getDepartmentId());
		System.out.println(doctor);
		JSONArray array=JSONArray.fromObject(doctor);
		out.print(array);
		out.flush();
		out.close();
	}
    
	//从前端传回医生的姓名查找医生的出诊时间
	@RequestMapping("findTime")
	public void HanderSelectTime (HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("text");
		//通过医生的名字查找医生的信息
		Doctor doctor=doctorServiceImpl.selectDoctor(name);
		//通过医生id查找医生的出诊信息
		List<VistorTime> time=doctorServiceImpl.listVistorTime(doctor.getId());
		JSONArray array=JSONArray.fromObject(time);
		out.print(array);
		out.flush();
		out.close();
	}
	
	//加载预约的页面
	@RequestMapping("showOrder")
	public String showOrderHandler() {
		return "order";
	}
	
}
