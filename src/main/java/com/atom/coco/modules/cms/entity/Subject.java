package com.atom.coco.modules.cms.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.apache.commons.lang3.builder.ToStringBuilder;

//JPA标识
@Entity
@Table(name = "h_subject")
public class Subject {

	private Long id;
	private String fatherId;
	private String name;
	private String dn;
	private String status;
	private String type;
	private Subject sonSub;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFatherId() {
		return fatherId;
	}

	public void setFatherId(String fatherId) {
		this.fatherId = fatherId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDn() {
		return dn;
	}

	public void setDn(String dn) {
		this.dn = dn;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@ManyToOne
	@JoinColumn(name = "son_sub")
	public Subject getSonSub() {
		return sonSub;
	}

	public void setSonSub(Subject sonSub) {
		this.sonSub = sonSub;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}
