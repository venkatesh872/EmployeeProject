package com.thoughtfocus.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.thoughtfocus.employee.service.DeleteService;

@RestController
public class DeleteController {

	@Autowired
	DeleteService deleteService;

	@GetMapping("/deleteEmployee/{id}.do")
	public ModelAndView delete(@PathVariable int id) {
		ModelAndView view = new ModelAndView();
		deleteService.deleteEmployee(id);
		view.setViewName("success");
		view.addObject("status", "deleted...");
		return view;
	}
}
