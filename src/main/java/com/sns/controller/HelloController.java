package com.sns.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HelloController {
	
	@RequestMapping(value={"/","/home","/index"}, method = RequestMethod.GET)
    public ModelAndView home() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","Home");
		mv.addObject("userClickHome",true);
		return mv;
    }
	
	@RequestMapping(value="/about", method = RequestMethod.GET)
    public ModelAndView about() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","About Us");
		mv.addObject("userClickAbout",true);
		return mv;
    }
	
	@RequestMapping(value="/contact", method = RequestMethod.GET)
    public ModelAndView contact() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","Contact Us");
		mv.addObject("userClickContact",true);
		return mv;
    }
	
	@RequestMapping(value="/service", method = RequestMethod.GET)
    public ModelAndView service() {
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","Services");
		mv.addObject("userClickService",true);
		return mv;
    }
	
}