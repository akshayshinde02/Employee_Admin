package com.dao;

import org.hibernate.Session;

import com.provider.FactoryProvider;

public class SearchEmp {
	
	public User getEmployee(int id) {
		
		Session s = FactoryProvider.getFactory().openSession();
		
		return s.get(User.class, id);
	}
	
	

}
