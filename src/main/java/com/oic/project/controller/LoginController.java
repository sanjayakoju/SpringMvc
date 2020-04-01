package com.oic.project.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
public class LoginController {
	
	@Autowired
	private UserDao udao;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLoginForm() {
		
		
		return "login";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String isExist(@ModelAttribute User u,Model model,HttpServletRequest req,HttpSession session) throws IOException {
		
		u.setPassword(DigestUtils.md5DigestAsHex(u.getPassword().getBytes()));
		if(udao.userLogin(u.getUsername(), u.getPassword()))
		{
			session.setAttribute("activeuser", u.getUsername());
			session.setMaxInactiveInterval(5000);
			return "home";
		}
		else
		{
			model.addAttribute("error","User doesnot Exist !!!");
			return "login";
		}
	}


}
