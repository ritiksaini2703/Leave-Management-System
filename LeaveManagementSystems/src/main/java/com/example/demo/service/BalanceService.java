package com.example.demo.service;

import com.example.demo.model.ApplyLeave;
import com.example.demo.model.Employee;

public class BalanceService {
	
public Employee balanceL(int empid,Employee bleave,ApplyLeave aleave) {
		
		int rem=0;
		if(aleave.getTypeofleave().equals("sick")) {
			 rem=bleave.getSick()-aleave.getTotalnumberofdays();
			 if(rem>=0) {
				bleave.setSick(rem);
				aleave.setLeavestatus("Approved");
			}
			return bleave;	
		}
		else if(aleave.getTypeofleave().equals("paternity")) {
			 rem=bleave.getPaternity()-aleave.getTotalnumberofdays();
			 if(rem>=0) {
				bleave.setPaternity(rem);
				aleave.setLeavestatus("Approved");
			}
			return bleave;	
		}
		else if(aleave.getTypeofleave().equals("casual")) {
			 rem=bleave.getCasual()-aleave.getTotalnumberofdays();
			 if(rem>=0) {
				bleave.setCasual(rem);
				aleave.setLeavestatus("Approved");
			}
			return bleave;	
		}
		else if(aleave.getTypeofleave().equals("personal leave")) {
			 rem=bleave.getPersonal()-aleave.getTotalnumberofdays();
			 if(rem>=0) {
				bleave.setPersonal(rem);
				aleave.setLeavestatus("Approved");
			}return bleave;
		}
		else if(aleave.getTypeofleave().equals("adoption")) {
			 rem=bleave.getAdoption()-aleave.getTotalnumberofdays();
			 if(rem>=0) {
				bleave.setAdoption(rem);
				aleave.setLeavestatus("Approved");
			}return bleave;
		}
	
		else if(aleave.getTypeofleave().equals("maternity")) {
			 rem=bleave.getMaternity()-aleave.getTotalnumberofdays();
			 if(rem>=0) {
				bleave.setMaternity(rem);
				aleave.setLeavestatus("Approved");
			}return bleave;
		}
		else if(aleave.getTypeofleave().equals("marriage")) {
			 rem=bleave.getMarriage()-aleave.getTotalnumberofdays();
			 if(rem>=0) {
				bleave.setMarriage(rem);
				aleave.setLeavestatus("Approved");
			}return bleave;
		}
		else {
		return bleave;
		}
	}

}
