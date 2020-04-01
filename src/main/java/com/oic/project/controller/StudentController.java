package com.oic.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oic.project.dao.StudentDao;
import com.oic.project.models.Student;

@Controller
public class StudentController {
	
	@Autowired
	private StudentDao sdao;
	
	@RequestMapping(value="/forms",method=RequestMethod.GET)
	public String getForm(Model model,HttpSession session)
	{
		if(StringUtils.isEmpty(session.getAttribute("activeuser")))
		{
			return "login";
		}
		model.addAttribute("mstock", new Student());
		return "forms";
	}
	
	@RequestMapping(value="/forms",method=RequestMethod.POST)
	public String addStudent(@ModelAttribute Student s,Model model,HttpSession session)
	{
		if(StringUtils.isEmpty(session.getAttribute("activeuser")))
		{
			return "login";
		}

		if(sdao.addStudent(s)==0)
		{
			model.addAttribute("message" ,"Reocrd save Failure");
		}
		else 
		{
			model.addAttribute("message" ,"Reocrd save successfully");
		}
		model.addAttribute("mstock", new Student());
		return "forms";
	}


	
	@RequestMapping(value="/{id}/edit", method=RequestMethod.GET)
	public String edit(@PathVariable("id") int id,Model model,HttpSession session)
	{
		if(StringUtils.isEmpty(session.getAttribute("activeuser")))
		{
			return "login";
		}

		model.addAttribute("mstock", sdao.getById(id));
		return "editstudent";
	}

	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String update(@ModelAttribute Student s, Model model,HttpSession session)
	{
		if(StringUtils.isEmpty(session.getAttribute("activeuser")))
		{
			return "login";
		}

		sdao.updateStudent(s);
		model.addAttribute("slist", sdao.getAll());
		return "tables";
	}
	

	@RequestMapping(value="/{id}/delete", method=RequestMethod.GET)
	public String delete(@PathVariable("id") int id,Model model,HttpSession session)
	{
		if(StringUtils.isEmpty(session.getAttribute("activeuser")))
		{
			return "login";
		}

		sdao.deleteStudent(id);
		model.addAttribute("slist", sdao.getAll());
		return "tables";
	}
	
		

}
