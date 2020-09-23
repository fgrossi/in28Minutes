package com.in28minutes.springboot.web.service;

import org.springframework.stereotype.Service;

@Service
public class LoginService {

	public boolean validateUser(String user, String password) {
		return user.equals("in28Minutes") && password.equals("dummy");
	}
}
