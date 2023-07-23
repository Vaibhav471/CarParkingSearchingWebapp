package com.bcollege;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="address")
public class Address {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int addressID;
	String state,city,adl1,adl2,adl3;
	int pin_code;
	int pno;
	String owner;
	int statys;
	
	public Address(int addressID, String state, String city, String adl1, String adl2, String adl3, int pin_code,
			int pno, String owner, int statys) {
		this.addressID = addressID;
		this.state = state;
		this.city = city;
		this.adl1 = adl1;
		this.adl2 = adl2;
		this.adl3 = adl3;
		this.pin_code = pin_code;
		this.pno = pno;
		this.owner = owner;
		this.statys = statys;
	}

	public Address() {
	}

	public int getAddressID() {
		return addressID;
	}

	public void setAddressID(int addressID) {
		this.addressID = addressID;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAdl1() {
		return adl1;
	}

	public void setAdl1(String adl1) {
		this.adl1 = adl1;
	}

	public String getAdl2() {
		return adl2;
	}

	public void setAdl2(String adl2) {
		this.adl2 = adl2;
	}

	public String getAdl3() {
		return adl3;
	}

	public void setAdl3(String adl3) {
		this.adl3 = adl3;
	}

	public int getPin_code() {
		return pin_code;
	}

	public void setPin_code(int pin_code) {
		this.pin_code = pin_code;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public int getStatys() {
		return statys;
	}

	public void setStatys(int statys) {
		this.statys = statys;
	}
	
	
	
}
