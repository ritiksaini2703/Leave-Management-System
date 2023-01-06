package com.example.demo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee,Integer> {
	List<Employee> findByUsernameAndPassword(String username,String password);
	Employee getRefrencedByUsername(String username);
	Employee getRefrencedByPassword(String password);
	Employee getReferenceByUsernameAndPassword(String username, String password);
	List<Employee> findByStatus(String string);
	
}
