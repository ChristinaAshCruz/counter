package com.christinac.counter.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index(HttpSession session) {
		if (session.getAttribute("count") == null) {			
			session.setAttribute("count", 0);
		} else {
			Integer newCount = (Integer) session.getAttribute("count");
			session.setAttribute("count", (newCount + 1));
		}
		return "index.jsp";
	}
	
	@GetMapping("/showCount")
	public String showCount(HttpSession session,Model model) {
		Integer currentCount = (Integer) session.getAttribute("count");
		model.addAttribute("currentCount", currentCount);
		return "showCount.jsp";
	}
	
	
	//NINJA BONUS:
	@GetMapping("/add2")
	public String counterAddTwo(HttpSession session) {
		if (session.getAttribute("count") == null) {			
			session.setAttribute("count", 0);
		} else {
			Integer newCount = (Integer) session.getAttribute("count");
			session.setAttribute("count", (newCount + 2));
		}
		return "addTwo.jsp";
	}
	
	@GetMapping("/reset")
	public String reset(HttpSession session) {
		session.setAttribute("count", 0);
		return "index.jsp";
	}
}