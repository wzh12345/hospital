package com.hm.service;

import java.util.List;

import com.hm.pojo.Order;

public interface OrderService {
	
	/**
	 * 插入用户信息（注册）
	 * @param user  对象
	 * @return  受影响的行数
	 */
	public int insertUser(Order user);
	
	/**
	 * 根据用户id查询出预约的信息
	 * @param name
	 * @return
	 */
	public List<Order> selectUser(int uid);
	
	/**
	 * 根据医生id查询出预约的信息
	 * @param name
	 * @return
	 */
	public List<Order> selectPatient(int doctorId);
	
	/**
	 * 根据预约的id查找预约信息
	 * @param pid
	 * @return
	 */
	public Order selectOrder(int pid);
	
	/**
	 * 根据预约的id更改预约状态
	 * @param pid
	 * @return
	 */
	public int changeStatus(int pid);
}
