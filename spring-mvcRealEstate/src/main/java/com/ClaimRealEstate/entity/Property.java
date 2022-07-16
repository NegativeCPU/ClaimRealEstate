package com.ClaimRealEstate.entity;

import javax.persistence.*;

@Entity
@Table(name = "property")
public class Property {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer propertyId;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "address_id")
	private Address propertyAddress;

	@Column(name = "sqft")
	private Integer sqft;

	@Column(name = "list_price")
	private String listPrice;

	@Column(name = "acres")
	private int acreage;

	public Property() {

	}

	public Property(Integer propertyId, Address propertyAddress, Integer sqft, String listPrice, int acreage) {
		this.propertyId = propertyId;
		this.propertyAddress = propertyAddress;
		this.sqft = sqft;
		this.listPrice = listPrice;
		this.acreage = acreage;
	}

	public Integer getPropertyId() {
		return propertyId;
	}

	public void setPropertyId(Integer propertyId) {
		this.propertyId = propertyId;
	}

	public Address getPropertyAddress() {
		return propertyAddress;
	}

	public void setPropertyAddress(Address propertyAddress) {
		this.propertyAddress = propertyAddress;
	}

	public Integer getSqft() {
		return sqft;
	}

	public void setSqft(Integer sqft) {
		this.sqft = sqft;
	}

	public String getListPrice() {
		return listPrice;
	}

	public void setListPrice(String listPrice) {
		this.listPrice = listPrice;
	}

	public int getAcreage() {
		return acreage;
	}

	public void setAcreage(int acreage) {
		this.acreage = acreage;
	}

	@Override
	public String toString() {
		return "Property [address=" + propertyAddress + ", listPrice=" + listPrice + ", size=" + sqft + ", acreage="
				+ acreage + "]";
	}

}
