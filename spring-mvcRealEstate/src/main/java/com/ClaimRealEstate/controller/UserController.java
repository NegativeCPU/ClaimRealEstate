package com.ClaimRealEstate.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ClaimRealEstate.entity.User;
import com.ClaimRealEstate.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@GetMapping("/")
	public String welcome(Model model) {
		return "index";
	}

	@GetMapping("/login")
	public ModelAndView signUp(Model model) {
		return new ModelAndView("login", "userLogin", new User());
	}

	@PostMapping("/login")
	public String handleLogin(Model model, @ModelAttribute("userLogin") User user, HttpSession session) {
		Optional<User> valid = userService.getUserById(user.getEmail());
		if (valid.isPresent()) {
			User found = userService.findUserLogin(user.getEmail(), user.getPassword());
			System.out.println(found);
			model.addAttribute("setUser", found);
			session.setAttribute("setUser", user);

			System.out.println(found.getIsAgent());

			if (found.getIsAgent() == 0) {
				return "customer-profile";
			} else {
				return "agent-profile";
			}

		} else {
			model.addAttribute("msg", "Invalid Login");
			return "login";
		}
	}

	@GetMapping("/sign-up")
	public ModelAndView register(Model model) {
		return new ModelAndView("sign-up", "user", new User());
	}

	@PostMapping("/sign-up")
	public String handleRegistration(Model model, @ModelAttribute("user") User user, HttpSession session) {
		userService.saveUser(user);
		model.addAttribute("newUser", user);
		return "thankYou";
	}

}
