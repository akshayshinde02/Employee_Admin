package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dao.User;
import com.provider.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Add() {
        // TODO Auto-generated constructor stub
    }

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		
		String fname = request.getParameter("first-name");
		String lname = request.getParameter("last-name");
		String email = request.getParameter("email");
		String number = request.getParameter("mobile-number");
		String date = request.getParameter("date-of-birth");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String country = request.getParameter("country");
		String city = request.getParameter("city");
		String[] skill = request.getParameterValues("skills");
		List<String> skillsList = Arrays.asList(skill);
		
		out.print(fname+" "+lname+" "+email+" "+number+" "+date+" "+gender+" "+" "+address+" "+country+" "+city+" ");
		
		for(String skills:skill) {
			out.print(skills);
		}
		 
		
		User user = new User(fname,lname,number,email,date,gender,address,country,city,skillsList);
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		request.setAttribute("responseMessage", HttpServletResponse.SC_CREATED);


	    request.getRequestDispatcher("response.jsp").forward(request, response);
		
		session.save(user);
		tx.commit();
		
		session.close();
		
		
		
	}

}
