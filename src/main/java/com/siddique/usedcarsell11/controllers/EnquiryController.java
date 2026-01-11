package com.siddique.usedcarsell11.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.siddique.usedcarsell11.entities.Enquiry;
import com.siddique.usedcarsell11.services.EnquiryService;
@Controller
public class EnquiryController {
	@Autowired
	EnquiryService EnqService;

@GetMapping("/NewEnquiry")
public String NewEnquiry(){
	return"NewEnquiry.html";
	
}
@PostMapping("/saveenq")
public String saveenq(Enquiry enq, Model m) {
	m.addAttribute("enquiry", enq);

	EnqService.addnewenquiry(enq);
	return "NewEnquiryAdded.jsp";
}
@GetMapping("/enquiries")
public String enquiries(Model m){
	
	List<Enquiry> list=EnqService.getallenquiry();
	m.addAttribute("List",list);
	return "Enquiries.jsp";
}

}
