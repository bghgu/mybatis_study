package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.example.demo.dto.MyAuthenticaion;
import com.example.demo.dto.User;
import com.example.demo.mapper.TestMapper;

@Service
public class AuthorizationService {

    @Autowired
    TestMapper testMapper;

    public User login(String id, String password) {
        User user = testMapper.findByName(id);
        if(user == null) return null;
        if(user.getPassword().equals(password) == false) return null;
        return user;
    }

    public static User getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication instanceof MyAuthenticaion)
            return ((MyAuthenticaion) authentication).getUser();
        return null;
    }

    public static void setCurrentUser(User user) {
        ((MyAuthenticaion)
                SecurityContextHolder.getContext().getAuthentication()).setUser(user);
    }

}

