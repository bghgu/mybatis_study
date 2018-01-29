package com.example.demo.mapper;

import com.example.demo.dto.*;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface TestMapper {
	List<User> findAll();
	User findByName(String name);
	User login(@Param("id") String id, @Param("password") String password);
	void signUp(User user);
}
