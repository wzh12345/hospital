package com.hm.serivce.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hm.dao.UserMapping;
import com.hm.pojo.User;
import com.hm.service.UserService;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapping userMapping;
	
	public void setUserMapping(UserMapping userMapping) {
		this.userMapping = userMapping;
	}

	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return userMapping.insertUser(user);
	}

	@Override
	public User selectUserByName(String uname) {
		// TODO Auto-generated method stub
		return userMapping.selectUserByName(uname);
	}

	@Override
	public User selectUserByCardId(String cardId) {
		// TODO Auto-generated method stub
		return userMapping.selectUserByCardId(cardId);
	}

}
