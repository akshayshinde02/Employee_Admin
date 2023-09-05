package com.dao;

import javax.persistence.*;

import com.servlet.Add;

@Entity
@Table(name = "employee_skills")
public class EmployeeSkills {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "employee_id")
    private User employee;

    @Column(name = "skill")
    private String skill;

   

    public EmployeeSkills(int id, User employee, String skill) {
		super();
		this.id = id;
		this.employee = employee;
		this.skill = skill;
	}

	public EmployeeSkills() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getEmployee() {
        return employee;
    }

    public void setEmployee(User employee) {
        this.employee = employee;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }
}
