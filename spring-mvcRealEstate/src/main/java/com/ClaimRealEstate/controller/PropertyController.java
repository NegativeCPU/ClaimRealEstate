package com.ClaimRealEstate.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ClaimRealEstate.entity.Property;
import com.ClaimRealEstate.service.PropertyService;

@Controller
public class PropertyController {

	@Autowired
	PropertyService propertyService;

	@GetMapping("/property-registration")
	public ModelAndView register(Model model) {
		return new ModelAndView("property-registration", "agentProperty", new Property());
	}

	@PostMapping("/property-registration")
	public String handleRegistration(Model model, @ModelAttribute("agentProperty") Property property,
			HttpSession session) {
		propertyService.saveProperty(property);
		model.addAttribute("newProperty", property);
		return "thankYou";
	}

	@GetMapping("agent-view-properties")
	public String agentPropertyList(Model model, HttpSession session) {
		List<Property> list = propertyService.getAllProperties();
		model.addAttribute("properties", list);
		System.out.println(model.addAttribute(list));
		return "agent-view-properties";
	}

	@GetMapping("customer-view-property")
	public String customerPropertyList(Model model, HttpSession session) {
		List<Property> list = propertyService.getAllProperties();
		model.addAttribute("properties", list);
		System.out.println(model.addAttribute(list));
		return "customer-view-property";
	}

}
