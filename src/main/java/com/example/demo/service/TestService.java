package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.User;
import com.example.demo.mapper.TestMapper;

@Service
public class TestService {

	@Autowired
	TestMapper testmapper;
	
	public List<User> findAll() {
		List<User> users = testmapper.findAll();
		return users;
	}
	
	public User findByName(String name) {
		return testmapper.findByName(name);
	}
	
	public User login(String id, String password) {
		User user = testmapper.login(id, password);
		if(user == null) return null;
		else return user;
	}
	
	public void signUp(User user) {
		testmapper.signUp(user);
	}
	
}
