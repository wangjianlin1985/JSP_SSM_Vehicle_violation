package com.app.entity;
public class Wz {
 public int id;
 public String uid;
 public Autocar car;
 public Users u;
 
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
public void setUid(String uid){ 
 this.uid=uid;
 } 
 public String getUid(){
 return uid;
 } 
 public String carid;
 public void setCarid(String carid){ 
 this.carid=carid;
 } 
 public String getCarid(){
 return carid;
 } 
 public String title;
 public void setTitle(String title){ 
 this.title=title;
 } 
 public String getTitle(){
 return title;
 } 
 public String price;
 public void setPrice(String price){ 
 this.price=price;
 } 
 public String getPrice(){
 return price;
 } 
 public String score;
 public void setScore(String score){ 
 this.score=score;
 } 
 public String getScore(){
 return score;
 } 
public void setId(int id) {
this.id = id;
}

public int getId() {
return id;
}

}