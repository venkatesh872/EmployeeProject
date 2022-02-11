package com.thoughtfocus.employee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thoughtfocus.employee.dao.EmployeeDAO;
import com.thoughtfocus.employee.dto.EmployeeDTO;

@Service
public class RegistrationServiceImpl implements RegistrationService {

	@Autowired
	EmployeeDAO dao;

	@Override
	public boolean validateAndsaveUser(EmployeeDTO employee) {
		if (employee.getFirstName() != "" && employee.getLastName() != "" && employee.getSalary()>1000) {
			return dao.saveUser(employee);
		}
		return false;
	}

}
