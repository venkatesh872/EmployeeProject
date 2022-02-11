package com.thoughtfocus.employee.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.thoughtfocus.employee.dto.EmployeeDTO;
import com.thoughtfocus.employee.service.EmployeeService;

@RestController
public class TableController {
	@Autowired
	EmployeeService employeeService;

	@GetMapping("/getAllEmployee.do")
	public @ResponseBody ModelAndView getAllEmployee() {
		List<EmployeeDTO> employee = new ArrayList<EmployeeDTO>();

		employee =employeeService.getAllEmployee();

		ModelAndView view = new ModelAndView();

		view.setViewName("employee_details");
		view.addObject("employee", employee);

		return view;
	}

}
