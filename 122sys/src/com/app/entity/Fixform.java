package com.app.entity;
public class Fixform {
 public int id;
 public String address;
 public Users u;
 public int carid;
 public Autocar car;
 
 
 
 public int getCarid() {
	return carid;
}
public void setCarid(int carid) {
	this.carid = carid;
}
public Autocar getCar() {
	return car;
}
public void setCar(Autocar car) {
	this.car = car;
}
public Users getU() {
	return u;
}
public void setU(Users u) {
	this.u = u;
}
public void setAddress(String address){ 
 this.address=address;
 } 
 public String getAddress(){
 return address;
 } 
 public String tel;
 public void setTel(String tel){ 
 this.tel=tel;
 } 
 public String getTel(){
 return tel;
 } 
 public String username;
 public void setUsername(String username){ 
 this.username=username;
 } 
 public String getUsername(){
 return username;
 } 
 public String description;
 public void setDescription(String description){ 
 this.description=description;
 } 
 public String getDescription(){
 return description;
 } 
 public String fixdesc;
 public void setFixdesc(String fixdesc){ 
 this.fixdesc=fixdesc;
 } 
 public String getFixdesc(){
 return fixdesc;
 } 
 public String created;
 public void setCreated(String created){ 
 this.created=created;
 } 
 public String getCreated(){
 return created;
 } 
 public String fixtime;
 public void setFixtime(String fixtime){ 
 this.fixtime=fixtime;
 } 
 public String getFixtime(){
 return fixtime;
 } 
 public String uid;
 public void setUid(String uid){ 
 this.uid=uid;
 } 
 public String getUid(){
 return uid;
 } 
 public String state;
 public void setState(String state){ 
 this.state=state;
 } 
 public String getState(){
 return state;
 } 
public void setId(int id) {
this.id = id;
}

public int getId() {
return id;
}

}