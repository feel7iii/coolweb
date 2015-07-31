package com.atom.coco.general.upload;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FileUploadDao extends PagingAndSortingRepository<UploadedFile, Long>, JpaSpecificationExecutor<UploadedFile> {

	Page<UploadedFile> findAll(Pageable pageable);
	
}
