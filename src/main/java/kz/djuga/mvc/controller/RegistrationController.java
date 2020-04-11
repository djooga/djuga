package kz.djuga.mvc.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kz.djuga.mvc.domain.User;
import kz.djuga.mvc.service.UserService;

@Controller
public class RegistrationController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/registration")
	public String reg() {
		return "reg";
	}
	
	@PostMapping("/registration")
	public String addUser(User user, Model model) {
		
		
		if(!userService.saveUser(user)) {
			model.addAttribute("message", "user is exist");
			return "reg";
		}
		
		model.addAttribute("message", "User is created, pleas Sign in");
		return "redirect:/login";
	}
}
