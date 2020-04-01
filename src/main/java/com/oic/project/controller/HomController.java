package com.oic.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomController {
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String getHomePage()
	{
		return "home";
	}

}
