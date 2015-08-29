package com.atom.coco.modules.cms.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.atom.coco.modules.cms.entity.Subject;
import com.atom.coco.modules.cms.repository.SubjectDao;



@Component
@Transactional
public class SubjectService {

	@Autowired
	private SubjectDao subjectDao;

	public List<Subject> findAll() {
		List<Subject> subjectAll = new ArrayList<Subject>();
		List<Subject> subjectLst = subjectDao.findRoots();
		for (int i = 0; i < subjectLst.size(); i++) {
			Subject sub = subjectLst.get(i);
			List<Subject> sonSubLst = subjectDao.findAll(sub.getDn());
			for (int j = 0; j < sonSubLst.size(); j++) {
				sub.setSonSub(sonSubLst.get(i));
			}
			subjectAll.add(sub);
		}
		return subjectAll;
	}
}
