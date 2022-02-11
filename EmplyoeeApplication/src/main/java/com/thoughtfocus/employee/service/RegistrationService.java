package com.thoughtfocus.employee.service;

import com.thoughtfocus.employee.dto.EmployeeDTO;

public interface RegistrationService {

	boolean validateAndsaveUser(EmployeeDTO employee);

}
