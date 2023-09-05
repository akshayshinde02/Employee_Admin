package com.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.provider.FactoryProvider;

public class Update {

    public void updateEmployee(int id, User updatedEmployee) {
        Session session = FactoryProvider.getFactory().openSession();
        Transaction transaction = session.beginTransaction();

        // Fetch the employee to be updated by ID
        User employee = session.get(User.class, id);

        if (employee != null) {
            // Update only the properties that have non-null values in the updatedEmployee object
            if (updatedEmployee.getAddress() != null) {
                employee.setAddress(updatedEmployee.getAddress());
            }
            if (updatedEmployee.getFirstname() != null) {
                employee.setFirstname(updatedEmployee.getFirstname());
            }
            if (updatedEmployee.getLastname() != null) {
                employee.setLastname(updatedEmployee.getLastname());
            }
            if (updatedEmployee.getAddress() != null) {
                employee.setAddress(updatedEmployee.getAddress());
            }
            if (updatedEmployee.getEmail() != null) {
                employee.setEmail(updatedEmployee.getEmail());
            }
            if (updatedEmployee.getGender() != null) {
                employee.setGender(updatedEmployee.getGender());
            }
            if (updatedEmployee.getCountry() != null) {
                employee.setCountry(updatedEmployee.getCountry());
            }
            if (updatedEmployee.getCity() != null) {
                employee.setCity(updatedEmployee.getCity());
            }
            if (updatedEmployee.getDate() != null) {
            	employee.setDate(updatedEmployee.getDate());
            }
            if (updatedEmployee.getSkills() != null) {
            	employee.setSkills(updatedEmployee.getSkills());
            }

            // Save or update the entity back to the database
            session.saveOrUpdate(employee);

            transaction.commit();
        }

        session.close(); // Close the session after transaction
    }
}
