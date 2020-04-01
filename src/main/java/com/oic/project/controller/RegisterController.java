package com.oic.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oic.project.dao.UserDao;
import com.oic.project.models.User;

@Controller
public class RegisterController {
	
	@Autowired
	UserDao udao;
	
	@RequestMapping(value = "/register", method=RequestMethod.GET)
	public String getRegisterForm()
	{
		return "register";
	}
	
	@RequestMapping(value = "/register", method=RequestMethod.POST)
	public String getRegisterForm(@ModelAttribute User u,Model model)
	{
		u.setPassword(DigestUtils.md5DigestAsHex(u.getPassword().getBytes()));
		udao.addUser(u);
		model.addAttribute("success","User register Successfully.");
		return "register";
	}


}
