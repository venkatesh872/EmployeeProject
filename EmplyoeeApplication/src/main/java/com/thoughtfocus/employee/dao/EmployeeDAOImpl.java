package com.thoughtfocus.employee.dao;

import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.thoughtfocus.employee.dto.EmployeeDTO;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	HibernateTemplate hibernateTemplate;

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean saveUser(EmployeeDTO employee) {
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();

			session.save(employee);

			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return true;

	}

	@Override
	public List getEmployeeInfo() {
		String hql = "SELECT EmployeeDTO FROM EmployeeDTO as employees";

		Session session = null;
		Transaction transaction = null;
		Query query = null;
		List details = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();

			query = session.createQuery(hql);

			details = query.list();
			System.out.println(details);
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return details;

	}

	@Override
	public List getAllEmployee() {
		return hibernateTemplate.loadAll(EmployeeDTO.class);
	}

	@Override
	public void deleteEmployee(int id) {
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();

			transaction = session.beginTransaction();
			session.delete(session.get(EmployeeDTO.class, id));
			transaction.commit();

		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void updateEmployee(EmployeeDTO employee) {
		Session session = null;
		Transaction transaction = null;
		EmployeeDTO dto=null;
		try {
			session = sessionFactory.openSession();

			transaction = session.beginTransaction();
			
			dto=session.get(EmployeeDTO.class, employee.getId());
			
			dto.setFirstName(employee.getFirstName());
			dto.setLastName(employee.getLastName());
			dto.setGender(employee.getGender());
			dto.setAge(employee.getAge());
			dto.setSalary(employee.getSalary());
			
			
			transaction.commit();

		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			if (session != null)
				session.close();
		}
	}

}
