package com.thoughtfocus.employee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thoughtfocus.employee.dao.EmployeeDAO;

@Service
public class DeleteServiceImpl implements DeleteService {
	
	@Autowired
	EmployeeDAO dao;

	@Override
	public void deleteEmployee(int id) {
		dao.deleteEmployee(id);
	}

}
