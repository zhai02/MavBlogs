package com.ssm.util.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.util.user.data.User;
import com.ssm.util.user.service.IUserService;

@Controller
@RequestMapping("/")
public class UserController {
	@Resource
	private IUserService userService;
	
	@RequestMapping("/showUser")
	public String toIndex(HttpServletRequest request,Model model){
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "showUser";
	}
	
	@RequestMapping("/forLogin")
	public String forLogin(HttpServletRequest request) {
		return "login";
	}
	
	@RequestMapping("/forRegister")
	public String forRegister(HttpServletRequest request) {
		return "register";
	}
	
}
