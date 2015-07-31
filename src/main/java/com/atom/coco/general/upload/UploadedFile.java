package com.atom.coco.general.upload;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.atom.coco.modules.demo.entity.IdEntity;

@Entity
@Table(name = "co_part")
public class UploadedFile extends IdEntity {

	private String name;
	private String location;
	private Long size;
	private String type;

	@Column(nullable = false)
	public String getName() {
		return name;
	}

	@Column(nullable = false)
	public String getLocation() {
		return location;
	}

	@Column()
	public Long getSize() {
		return size;
	}

	@Column(nullable = false)
	public String getType() {
		return type;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public void setType(String type) {
		this.type = type;
	}
}
