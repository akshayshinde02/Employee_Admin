package com.dao;

import java.util.List;

import org.hibernate.Session;

import com.provider.FactoryProvider;

public class Display {
	
	public List<User> getAllEmployees(){
		
		Session s = FactoryProvider.getFactory().openSession();
		List<User> employees = s.createQuery("FROM User",User.class).list();
//		System.out.print(employees.get(1));
		return employees;
	}

}
