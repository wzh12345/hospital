package com.hm.serivce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hm.dao.OrderMapping;
import com.hm.pojo.Order;
import com.hm.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapping orderMapping;
	
	public void setOrderMapping(OrderMapping orderMapping) {
		this.orderMapping = orderMapping;
	}

	@Override
	public int insertUser(Order user) {
		// TODO Auto-generated method stub
		return orderMapping.insertOrder(user);
	}

	@Override
	public List<Order> selectUser(int uid) {
		// TODO Auto-generated method stub
		return orderMapping.selectUser(uid);
	}

	@Override
	public List<Order> selectPatient(int doctorId) {
		// TODO Auto-generated method stub
		return orderMapping.selectPatient(doctorId);
	}

	@Override
	public Order selectOrder(int pid) {
		// TODO Auto-generated method stub
		return orderMapping.selectOrder(pid);
	}

	@Override
	public int changeStatus(int pid) {
		// TODO Auto-generated method stub
		return orderMapping.changeStatus(pid);
	}




}
