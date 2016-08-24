package org.packt.bus.portal.model.data;

// Generated 01 1, 16 4:39:20 PM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import javax.xml.bind.annotation.XmlAccessType;

/**
 * StationDetail generated by hbm2java
 */
@Entity
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@Table(name = "station_detail", catalog = "bts")
public class StationDetail implements java.io.Serializable {

	private int id;
	private String address;
	private String email;
	private String telephone;

     @XmlTransient
	private Set<Trip> trips = new HashSet<Trip>(0);

	public StationDetail() {
	}

	public StationDetail(int id, String address, String email, String telephone) {
		this.id = id;
		this.address = address;
		this.email = email;
		this.telephone = telephone;
	}

	public StationDetail(int id, String address, String email,
			String telephone, Set<Trip> trips) {
		this.id = id;
		this.address = address;
		this.email = email;
		this.telephone = telephone;
		this.trips = trips;
	}

	@Id
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "address", nullable = false, length = 45)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "email", nullable = false, length = 45)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "telephone", nullable = false, length = 45)
	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

    @JsonBackReference("trips-data")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stationDetail")
	public Set<Trip> getTrips() {
		return this.trips;
	}

	public void setTrips(Set<Trip> trips) {
		this.trips = trips;
	}

}