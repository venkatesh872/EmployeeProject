package com.thoughtfocus.employee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thoughtfocus.employee.dao.EmployeeDAO;
import com.thoughtfocus.employee.dto.EmployeeDTO;

@Service
public class UpdateServiceImpl implements UpdateService {

	@Autowired
	EmployeeDAO dao;

	@Override
	public void updateEmployeeDetails(EmployeeDTO employee) {
		dao.updateEmployee(employee);
	}

}
