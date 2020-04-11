package kz.djuga.mvc.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kz.djuga.mvc.domain.User;

@Controller
public class MainController {

	@GetMapping("/")
	public String home(
			@AuthenticationPrincipal User user
			) {
		return "home";
	}
}
