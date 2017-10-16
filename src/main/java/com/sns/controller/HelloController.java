package com.sns.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@RequestMapping(value="/", method = RequestMethod.GET)
    public String home() {
		return "home";
    }
	
	@RequestMapping(value="/home", method = RequestMethod.GET)
    public String homePage() {
		return "home";
    }
	
	@RequestMapping(value="/services", method = RequestMethod.GET)
    public String servicesPage() {
		return "services";
    }
	
	@RequestMapping(value="/contactus", method = RequestMethod.GET)
    public String contactPage() {
		return "contactus";
    }
}