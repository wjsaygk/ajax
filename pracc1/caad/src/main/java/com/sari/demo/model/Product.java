package com.sari.demo.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

public class Product {
	int id;
	double Pid;
	String Pname;
	int pOrder;
	int uid;
	int uAge;
	int pPrice;
	int Ptype;
	Timestamp createTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getPid() {
		return Pid;
	}
	public void setPid(double pid) {
		Pid = pid;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public int getpOrder() {
		return pOrder;
	}
	public void setpOrder(int pOrder) {
		this.pOrder = pOrder;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getuAge() {
		return uAge;
	}
	public void setuAge(int uAge) {
		this.uAge = uAge;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public int getPtype() {
		return Ptype;
	}
	public void setPtype(int ptype) {
		Ptype = ptype;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	public Product(int id, double pid, String pname, int pOrder, int uid, int uAge, int pPrice, int ptype,
			Timestamp createTime) {
		super();
		this.id = id;
		Pid = pid;
		Pname = pname;
		this.pOrder = pOrder;
		this.uid = uid;
		this.uAge = uAge;
		this.pPrice = pPrice;
		Ptype = ptype;
		this.createTime = createTime;
	}
	 
	public Product() {
		// TODO Auto-generated constructor stub
	}
}
