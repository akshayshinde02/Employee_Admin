package com.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.provider.FactoryProvider;

import jakarta.servlet.annotation.WebServlet;



public class Delete {
	
	public void deleteEmp(int empid) {
		
		Session s = FactoryProvider.getFactory().openSession();
		
		Transaction tx = s.beginTransaction();
		
		User emp = s.get(User.class, empid);
		
		if(emp !=null) {
			s.delete(emp);
			tx.commit();
		}
	}

}
