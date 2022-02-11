package com.thoughtfocus.employee.dao;

import java.util.List;

import com.thoughtfocus.employee.dto.EmployeeDTO;

public interface EmployeeDAO {

	boolean saveUser(EmployeeDTO employee);

	List getEmployeeInfo();

	List getAllEmployee();

	void deleteEmployee(int id);

	void updateEmployee(EmployeeDTO employee);

}
