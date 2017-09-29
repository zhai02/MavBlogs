package com.ssm.util.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssm.util.user.data.User;
import com.ssm.util.user.service.IUserService;

import org.json.JSONObject;

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
	
	@RequestMapping(value="/registerCheck",method=RequestMethod.GET)
	public String registerCheck(@RequestParam(value="username") String username,
								@RequestParam(value="email") String email,
								HttpServletRequest request) {
//		System.out.println(username+"  "+email);
		String resultStr = this.userService.registerCheck(username, email);
		JSONObject json = new JSONObject(resultStr);
		
		return json.toString();
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register() {
		return "";
	}
}
