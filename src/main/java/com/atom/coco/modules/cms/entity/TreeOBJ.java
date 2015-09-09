package com.atom.coco.modules.cms.entity;

import java.util.List;

public class TreeOBJ {

	private Long id;
	private String node;
	private String child;
	private List<Subject> subLst;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNode() {
		return node;
	}

	public void setNode(String node) {
		this.node = node;
	}

	public String getChild() {
		return child;
	}

	public void setChild(String child) {
		this.child = child;
	}

	public List<Subject> getSubLst() {
		return subLst;
	}

	public void setSubLst(List<Subject> subLst) {
		this.subLst = subLst;
	}
}
