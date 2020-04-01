package com.oic.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oic.project.dao.StudentDao;

@Controller
public class TableController {
	@Autowired
	StudentDao sdao;
	
	@RequestMapping(value="/tables",method=RequestMethod.GET)
	public String getTable(Model model)
	{
		model.addAttribute("slist",sdao.getAll());
		return "tables";
	}
	
	


}
