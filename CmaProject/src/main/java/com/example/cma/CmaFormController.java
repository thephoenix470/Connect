package com.example.cma;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CmaFormController {
	@RequestMapping("/")
	public String Home() {
		System.out.println("Home");
		return "Login.jsp";
	}
	@RequestMapping("/signup")
	public String SignUp() {
		System.out.println("Signup");
		return "SignUp.jsp";
	}
	
	@RequestMapping("/login")
	public String Login() {
		System.out.println("Login");
		return "Login.jsp";
	}
	
	@RequestMapping("/adminHome")
	public String Admin() {
		return "adminMain.jsp";
	}
	
	@RequestMapping("/userHome")
	public String User() {
		System.out.println("User");
		return "userMain.jsp";
	}
}
