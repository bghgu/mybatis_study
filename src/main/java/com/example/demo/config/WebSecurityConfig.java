package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.example.demo.service.AuthProvider;


@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    AuthProvider authProvider;

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/res/**");
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/", "/login", "/login-error", "/signup").permitAll()
                .antMatchers("/**").authenticated();

        http.csrf().disable();

        http.formLogin()
                .loginPage("/")
                .loginPage("/login")
                .loginProcessingUrl("/login-processing")
                .failureUrl("/login-error")
                .defaultSuccessUrl("/home", true)
                .usernameParameter("id")
                .passwordParameter("password");

        http.logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/")
                .invalidateHttpSession(true);

        http.authenticationProvider(authProvider);
    }

}
