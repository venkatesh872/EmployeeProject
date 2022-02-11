package com.thoughtfocus.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.thoughtfocus.employee.dto.EmployeeDTO;
import com.thoughtfocus.employee.service.UpdateService;

@RestController
public class UpdateController {

	@Autowired
	UpdateService updateService;

	@PostMapping("update.do")
	public ModelAndView updateEmployee(EmployeeDTO employee) {

		updateService.updateEmployeeDetails(employee);

		ModelAndView view = new ModelAndView();
		view.setViewName("success");
		view.addObject("status", "updated successfully...");
		
		return view;
	}

}
