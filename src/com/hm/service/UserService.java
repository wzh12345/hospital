package com.hm.service;

import com.hm.pojo.User;

public interface UserService {

	/**
	 * 插入用户（注册）
	 * @param user 对象
	 * @return 返回受影响的行数
	 */
	int insertUser(User user);
	
	/**
	 * 根据用户名查找用户（登录的时候）
	 * @param name 用户名
	 * @return  用户对象
	 */
	User selectUserByName(String uname);
	
	/**
	 * 根据身份证id查找用户
	 * @param cardId
	 * @return
	 */
	User selectUserByCardId(String cardId);
}
