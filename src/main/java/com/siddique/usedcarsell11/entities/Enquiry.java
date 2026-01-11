package com.siddique.usedcarsell11.entities;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="enquirie")
public class Enquiry {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int enquiryid;
	private LocalDate enquirydate;
	@Column(nullable=false)
	private String customername ;
	@Column(nullable=false)
	private String mobile;
	public int getEnquiryid() {
		return enquiryid;
	}
	public void setEnquiryid(int enquiryid) {
		this.enquiryid = enquiryid;
	}
	public LocalDate getEnquirydate() {
		return enquirydate;
	}
	public void setEnquirydate(LocalDate enquirydate) {
		this.enquirydate = enquirydate;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	private String remarks;
	
}
