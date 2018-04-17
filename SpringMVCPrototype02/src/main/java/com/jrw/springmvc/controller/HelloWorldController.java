package com.jrw.springmvc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jrw.springmvc.User;

@Controller
@RequestMapping("/")
public class HelloWorldController {

	private final Logger log = LoggerFactory.getLogger(HelloWorldController.class);
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome(ModelMap model) {
		model.addAttribute("greeting", "Welcome!");
		log.info("log message (info)");
		log.warn("log message (warn)");
		log.debug("log message (debug)");
		return "welcome";
	}
	
	@RequestMapping("/nomodel")
	public String nomodel() {
		return "nomodel";
	}
	
	@RequestMapping("/register")
	public String user(@ModelAttribute("user") User user, BindingResult bindResult) {
		return "userregistration";
	}

	/*
	 * Example method with no model (hence no attributes can be added) for demo purposes
	 */
	@RequestMapping(value = "/usersuccess", method = RequestMethod.POST)
	public String usersuccess() {
		return "usersuccess";
	}	
}
