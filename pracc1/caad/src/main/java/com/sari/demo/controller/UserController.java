package com.sari.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sari.demo.model.User;
import com.sari.demo.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository uRepo;
	
	@GetMapping("/home")
	public String home() {
		return "/home/home";
	}
	@GetMapping("/test")
	public @ResponseBody String Test() {
		return "테스트";
	}
	@GetMapping("/loginForm")
	public String UserLoginForm() {
		return "/user/loginForm";
	}
	@PostMapping("/login")
	public String UserLogin() {	
		return "redirect:/home";
	}
	@GetMapping("/joinForm")
	public String JoinForm() {
		return "/user/joinForm";
	}
	@PostMapping("/join")
	public String Join(User user , Model model) {
		model.addAttribute("user", user);
		uRepo.insertUser(user);
		return "redirect:/loginForm";
	}
}
