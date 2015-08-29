package com.atom.coco.modules.cms.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.atom.coco.modules.cms.entity.Subject;
import com.atom.coco.modules.cms.service.SubjectService;


@Controller
@RequestMapping(value = "/getree")
public class TreeGetController {
	
	@Autowired
	private SubjectService subjectService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getTree() {
		List<Subject> subject = subjectService.findAll();
		
		
		String fastJson = JSON.toJSONString(subject);
		fastJson = fastJson.replaceAll("fatherId", "parent").replaceAll("name", "text");
		return "task/getree";
	}
}
