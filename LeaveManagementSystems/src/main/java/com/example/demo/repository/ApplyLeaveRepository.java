package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.ApplyLeave;



@Repository
public interface ApplyLeaveRepository extends JpaRepository<ApplyLeave,Integer> {

	List<ApplyLeave> findByEmpid(int id);

	ApplyLeave findByempid(int id);
	ApplyLeave getReferenceByEmpid(int empid);

	List<ApplyLeave> findByRoleAndLeavestatus(String string, String string2);

	List<ApplyLeave> findByRole(String string);
	

}