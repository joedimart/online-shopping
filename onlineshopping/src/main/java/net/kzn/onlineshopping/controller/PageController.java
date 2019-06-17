package net.kzn.onlineshopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.kzn.shoppingbackend.dao.CategoryDAO;

@Controller
public class PageController {

	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping(value = { "/", "/home", "/index" })

	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("hello");
		mv.addObject("title", "Home");
		
		//passing the list of categories
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("userClickHome", true);
		return mv;
	}
}

/*
 * @RequestMapping(value = {"/test"}) public ModelAndView
 * test(@RequestParam(value = "greeting", required = false)String greeting) {
 * if(greeting == null) { greeting = "Hello"; } ModelAndView mv = new
 * ModelAndView("page"); mv.addObject("greeting", greeting); return mv; }
 * 
 * @RequestMapping(value = {"/test/{greeting}"})//curly braces make this dynamic
 * public ModelAndView test(@PathVariable(value = "greeting")String greeting) {
 * if(greeting == null) { greeting = "Hello"; } ModelAndView mv = new
 * ModelAndView("page"); mv.addObject("greeting", greeting); return mv; }
 */
