package com.sari.demo.model;

public class PlayerSa {
int id;
String pname;
int pno;
int pTeamId;
int page;
public PlayerSa() {
	// TODO Auto-generated constructor stub
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public int getPno() {
	return pno;
}
public void setPno(int pno) {
	this.pno = pno;
}
public int getpTeamId() {
	return pTeamId;
}
public void setpTeamId(int pTeamId) {
	this.pTeamId = pTeamId;
}
public int getPage() {
	return page;
}
public void setPage(int page) {
	this.page = page;
}
public PlayerSa(int id, String pname, int pno, int pTeamId, int page) {
	super();
	this.id = id;
	this.pname = pname;
	this.pno = pno;
	this.pTeamId = pTeamId;
	this.page = page;
}



}
