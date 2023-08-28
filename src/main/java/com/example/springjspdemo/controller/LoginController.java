package com.example.springjspdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.springjspdemo.model.User;
import com.example.springjspdemo.repository.UserRepository;

@Controller
@SessionAttributes("userId")
public class LoginController {
	
	@Autowired
		private UserRepository userRepository;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String welcomePage(ModelMap model, @RequestParam String userId, @RequestParam String password) {
		
		
		if(userId.length() > 12) {
			model.put("errorMsg", "Maximum characters allowed is 12 for username");
			return "login";
		}
		else if(userId.equals("admin") && password.equals("admin")) {
			model.put("userId", userId);
			return "welcome";
		}
		
		User user = userRepository.findByUserId(userId);
		
        if (user != null && user.getPassword().equals(password)) {
           // model.addAttribute("userId", userId);
            return "welcome";
        } else {
            model.addAttribute("errorMsg", "Incorrect userid or password");
            return "login";
        }
	}
	

}
