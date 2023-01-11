package dev.mvc.travel;

public class TravelVO {
	private int travelgrp_no;
	private String travelgrp_name="";
	
	public int getTravelgrp_no() {
		return travelgrp_no;
	}
	public void setTravelgrp_no(int travelgrp_no) {
		this.travelgrp_no = travelgrp_no;
	}
	public String getTravelgrp_name() {
		return travelgrp_name;
	}
	public void setTravelgrp_name(String travelgrp_name) {
		this.travelgrp_name = travelgrp_name;
	}
	
	private int travel_no;  
	private String travel_name;

	public int getTravel_no() {
		return travel_no;
	}
	public void setTravel_no(int travel_no) {
		this.travel_no = travel_no;
	}
	public String getTravel_name() {
		return travel_name;
	}
	public void setTravel_name(String travel_name) {
		this.travel_name = travel_name;
	}
}
