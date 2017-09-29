package com.ssm.util.user.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.util.user.IDao.IUserDao;
import com.ssm.util.user.data.User;
import com.ssm.util.user.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService{
	//@Resource
	@Autowired
	private IUserDao userDao;
	
	@Override
	public User getUserById(int userId) {
		return this.userDao.selectByPrimaryKey(userId);
	}
	
	public String registerCheck(String username,String email) {
		int userCount = this.userDao.checkUsername(username);
		int emailCount = this.userDao.checkEmail(email);
		String resultStr = "{\"userCount\":\""+userCount+"\",\"emailCount\":\""+emailCount+"\"}";
		return resultStr;
	}
	
	public int insertUserInfo(User user) {
		return this.userDao.insertUserInfo(user);
	}
}
