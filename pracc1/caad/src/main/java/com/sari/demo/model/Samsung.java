package com.sari.demo.model;

public class Samsung {
int id;
String tname;
int tyear;

public Samsung() {
	// TODO Auto-generated constructor stub
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getTname() {
	return tname;
}

public void setTname(String tname) {
	this.tname = tname;
}

public int getTyear() {
	return tyear;
}

public void setTyear(int tyear) {
	this.tyear = tyear;
}

public Samsung(int id, String tname, int tyear) {
	super();
	this.id = id;
	this.tname = tname;
	this.tyear = tyear;
}



}
