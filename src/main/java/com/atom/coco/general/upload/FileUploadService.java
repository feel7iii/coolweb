package com.atom.coco.general.upload;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

//Spring Bean的标识.
@Component
// 类中所有public函数都纳入事务管理的标识.
@Transactional
public class FileUploadService {

	@Autowired
	private FileUploadDao fileUploadDao;

	@PersistenceContext
	private EntityManager em;

	@Transactional(readOnly = true)
	public Page<UploadedFile> listFiles(int pageNumber, int pageSize) {

		return fileUploadDao.findAll(new PageRequest(pageNumber - 1, pageSize));
	}

	@Transactional(readOnly = true)
	public UploadedFile getFile(Long id) {
		return fileUploadDao.findOne(id);
	}

	@Transactional
	public UploadedFile saveFile(UploadedFile uploadedFile) {
		return fileUploadDao.save(uploadedFile);
	}

}
