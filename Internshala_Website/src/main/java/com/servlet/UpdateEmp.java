package com.servlet;

import com.dao.*;
import com.provider.FactoryProvider;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

@WebServlet("/update")
public class UpdateEmp extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
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

		User user = new User(fname,lname,number,email,date,gender,address,country,city,skillsList);
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = session.beginTransaction();

        Update updateManager = new Update();
        updateManager.updateEmployee(id, user);

        request.setAttribute("responseMsg", HttpServletResponse.SC_OK);

        request.getRequestDispatcher("update.jsp").forward(request, response);
       // response.sendRedirect("read.jsp");
    }
}
