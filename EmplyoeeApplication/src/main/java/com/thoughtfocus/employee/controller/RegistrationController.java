package com.thoughtfocus.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.thoughtfocus.employee.dto.EmployeeDTO;
import com.thoughtfocus.employee.service.RegistrationService;

@Controller
public class RegistrationController {

	@Autowired
	RegistrationService registrationService;

	@PostMapping("/reg.do")
	public ModelAndView registerUser(EmployeeDTO employee) {
		ModelAndView view = new ModelAndView();

		try {
			System.out.println(employee.toString());
			boolean saveStatus = registrationService.validateAndsaveUser(employee);

			if (saveStatus) {
				view.setViewName("success");
				view.addObject("status", "Registration successful...");
			} else {
				view.setViewName("error");
				view.addObject("status", "registration failed...");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return view;
	}

}
