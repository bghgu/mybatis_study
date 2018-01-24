package com.example.demo.controller;

import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dto.User;
import com.example.demo.service.TestService;

@RestController
public class APIController {

	@Autowired
	TestService testService;

	@GetMapping(value = "test")
	public String test() {
		return "hello World";
	}

	@PostMapping(value = "test")
	public Object test2(@RequestBody Object name) {
		return name;
	}

	@GetMapping(value = "findall")
	public List<User> findAll() {
		List<User> user = testService.findAll();
		return testService.findAll();
	}

	@PostMapping(value = "findname")
	public User findByName(@RequestBody User user) {
		return testService.findByName(user.getName());
	}

}
