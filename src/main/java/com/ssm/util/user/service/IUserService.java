package com.ssm.util.user.service;

import com.ssm.util.user.data.User;

public interface IUserService {
	public User getUserById(int userId);
	public String registerCheck(String username,String email);
}
