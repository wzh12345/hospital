package com.hm.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hm.pojo.Doctor;
import com.hm.pojo.Order;
import com.hm.pojo.User;
import com.hm.serivce.impl.DoctorServiceImpl;
import com.hm.serivce.impl.OrderServiceImpl;
import com.hm.serivce.impl.UserServiceImpl;
@Controller
public class UserController {

	 @Autowired
	 private UserServiceImpl userServiceImpl;
	 @Autowired
	 private DoctorServiceImpl doctorServiceImpl;
	 @Autowired
	 private OrderServiceImpl orderServiceImpl;
	 
	//注册
		@RequestMapping("Register")
		public String HandlerInsertUser(User user,HttpServletRequest request, HttpServletResponse response) throws Exception{
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			PrintWriter pw=response.getWriter();
			User us=userServiceImpl.selectUserByCardId(user.getCardId());
			System.out.println(us);
			if(us!=null) {
				pw.println("<script>alert('Registration failed id card number has been registered')</script>");
				pw.flush();
				return "login";
			}else {
				int num=userServiceImpl.insertUser(user);
				if(num>0) {
					pw.println("<script>alert('Registration Successful')</script>");
					pw.flush();
					return "login";
				}
			}	
			return null;
		}
		//登录
		@RequestMapping("login")
		public String HandlerLogin(HttpServletRequest request, HttpServletResponse response) throws Exception{
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			String name=request.getParameter("username");
			String pwd=request.getParameter("password");
			User user=userServiceImpl.selectUserByCardId(name);
			Doctor doctor=doctorServiceImpl.selectDoctor(name);
			PrintWriter pw=response.getWriter();
			if((user!=null)&&name.equals(user.getCardId())&&pwd.equals(user.getUpassword())) {
				HttpSession session=request.getSession();
				session.setAttribute("name", user.getUname());
				session.setAttribute("cardId", user.getCardId());
				return "redirect:jsp/index.jsp";
			}else {
				if((doctor!=null)&&name.equals(doctor.getName())&&pwd.equals(doctor.getPassword())) {
				HttpSession session=request.getSession();
				session.setAttribute("name", name);
				request.getRequestDispatcher("selectpatient.action").forward(request, response);
			}
			else {
				pw.println("<script>alert('Login Failer')</script>");
				pw.flush();
				return "login";
			}
				}
			return null;
		}
		
		//注销
		@RequestMapping("exit")
		public String HandlerExit (HttpServletRequest request, HttpServletResponse response) throws Exception{
			request.getSession().removeAttribute("name");
			request.getSession().removeAttribute("cardId");
			return "redirect:jsp/index.jsp";
		}
		
		//医生的首页
		@RequestMapping("selectpatient")
		public String HandlerSelectPatient(HttpServletRequest request, HttpServletResponse response) throws Exception{
			String name=(String)request.getSession().getAttribute("name");
			Doctor doctor=doctorServiceImpl.selectDoctor(name);
			List<Order> listOrder=orderServiceImpl.selectPatient(doctor.getId());
			request.setAttribute("order", listOrder);
			return "doctorinfo";		
		}
}
