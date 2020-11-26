//package net.ems.model;
//
//public class Avail {
//
//}
package net.ems.model;

import java.io.Serializable;
import java.time.LocalDate;

public class Avail implements Serializable {
	private static final long serialVersionUID = 1L;
	private String Name;
	private String phoneno;
	private String pickup;
	private String drop;
	private String vehicletype;
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getPickup() {
		return pickup;
	}
	public void setPickup(String pickup) {
		this.pickup = pickup;
	}
	public String getDrop() {
		return drop;
	}
	public void setDrop(String drop) {
		this.drop = drop;
	}
	public String getVehicletype() {
		return vehicletype;
	}
	public void setVehicletype(String vehicletype) {
		this.vehicletype = vehicletype;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}