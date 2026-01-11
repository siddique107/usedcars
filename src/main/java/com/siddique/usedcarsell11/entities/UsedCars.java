package com.siddique.usedcarsell11.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="usedcars")
public class UsedCars {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int carid;
@Column(nullable=false)
private String brand;
@Column(nullable=false)

private String model;
@Column(nullable=false)

private int mfgyear;

@Column(nullable=false)
private int kilometers;
@Column(nullable=false)

private String fueltype;
private String  color ;
@Column(nullable=false)

private float  price ;
@Column(nullable=false)

private String ownername ;
@Column(nullable=false)

private String  mobile ;
private String status="Available" ;
public int getCarid() {
	return carid;
}
public void setCarid(int carid) {
	this.carid = carid;
}
public String getBrand() {
	return brand;
}
public void setBrand(String brand) {
	this.brand = brand;
}
public String getModel() {
	return model;
}
public void setModel(String model) {
	this.model = model;
}
public int getMfgyear() {
	return mfgyear;
}
public void setMfgyear(int mfgyear) {
	this.mfgyear = mfgyear;
}
public int getKilometers() {
	return kilometers;
}
public void setKilometers(int kilometers) {
	this.kilometers = kilometers;
}
public String getFueltype() {
	return fueltype;
}
public void setFueltype(String fueltype) {
	this.fueltype = fueltype;
}
public String getColor() {
	return color;
}
public void setColor(String color) {
	this.color = color;
}
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}
public String getOwnername() {
	return ownername;
}
public void setOwnername(String ownername) {
	this.ownername = ownername;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getImage_path() {
	return image_path;
}
public void setImage_path(String image_path) {
	this.image_path = image_path;
}
private String image_path ;

}
