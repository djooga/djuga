package kz.djuga.mvc.controller;

import java.util.Collections;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kz.djuga.mvc.UserRepo;
import kz.djuga.mvc.domain.Role;
import kz.djuga.mvc.domain.User;

@Controller
public class RegistrationController {

	@Autowired
	private UserRepo userRepo;
	
	@GetMapping("/registration")
	public String reg() {
		return "reg";
	}
	
	@PostMapping("/registration")
	public String add(User user, Model model) {
		User userFromDB = userRepo.findByUsername(user.getUsername());
		
		if(userFromDB!=null) {
			model.addAttribute("message", "user is exist");
			return "reg";
		}
		user.setActive(true);
		user.setRoles(Collections.singleton(Role.USER));
		userRepo.save(user);
		model.addAttribute("message", "User is created, pleas Sign in");
		return "redirect:/login";
	}
}
