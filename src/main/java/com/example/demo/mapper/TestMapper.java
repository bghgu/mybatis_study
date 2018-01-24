package com.example.demo.mapper;

import com.example.demo.dto.*;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TestMapper {
	List<User> findAll();
	User findByName(String name);
}
