package com.example.springjspdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.springjspdemo.model.User;
import com.example.springjspdemo.todo.UserService;


@Controller
public class UserController {
		
	@Autowired
	private UserService userService;
	
	@SuppressWarnings("deprecation")
	@RequestMapping("register")
	public String signup(@ModelAttribute("user") User user, Model model) {
    	if (StringUtils.isEmpty(user.getUserId()) || StringUtils.isEmpty(user.getPassword())) {
		model.addAttribute("message", "username and password cannot be empty.");	
		return "register";
    	}
	
	boolean success = userService.registerUser(user);
	if(success) {
		model.addAttribute("successmessage", "User registered successfully!");
	}
	else {
        model.addAttribute("failuremessage", "Username already taken.");
	}
	return "register";
	}
}
