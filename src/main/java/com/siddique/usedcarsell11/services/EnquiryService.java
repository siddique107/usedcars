package com.siddique.usedcarsell11.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.siddique.usedcarsell11.entities.Enquiry;
import com.siddique.usedcarsell11.repositories.EnquiryRepo;

@Service
public class EnquiryService {
	@Autowired
	EnquiryRepo EnqRepo;
	
	public String addnewenquiry(Enquiry enq) {
		EnqRepo.save(enq);
		return "success";
	}
    public List<Enquiry> getallenquiry(){
    	return EnqRepo.findAll();
    }
}
