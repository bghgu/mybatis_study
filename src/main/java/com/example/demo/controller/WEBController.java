package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.dto.User;
import com.example.demo.service.AuthorizationService;
import com.example.demo.service.TestService;

@Controller
public class WEBController {
	
	@Autowired
	TestService testService;
	
	@GetMapping(value = {"", "login"})
	public String login(Model model, HttpServletRequest request) {
		model.addAttribute("loginError", false);
		model.addAttribute("User", new User());
		return "login";
	}
	
	@GetMapping("login-error")
	public String longError(Model model) {
		model.addAttribute("loginError", true);
		model.addAttribute("User", new User());
		return "login";
	}
	
	@PostMapping("login")
	public String login2(Model model, User user, HttpServletRequest request) {
		User user2 = testService.login(user.getId(), user.getPassword());
		if(user2 == null) {
			model.addAttribute("User", new User());
			model.addAttribute("loginError", true);
			return "login";
			//return "redirect:login-error";
		}
		else {
			return "redirect:home";
		}
	}
	
	@GetMapping("home")
	public String home(Model model, HttpServletRequest request) {
		if(request.isRequestedSessionIdValid()) {
			model.addAttribute("user", AuthorizationService.getCurrentUser());
			return "page/home";
		}
		return "redirect:login";
	}
	
	@GetMapping("signup")
	public String signup(Model model) {
		model.addAttribute("User", new User());
		return "page/signUp";
	}
	
	@PostMapping("signup")
	public String signup2(Model model, User user) {
		testService.signUp(user); 
		return "redirect:login";
	}
	
}
