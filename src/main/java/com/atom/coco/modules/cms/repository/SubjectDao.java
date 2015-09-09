package com.atom.coco.modules.cms.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.atom.coco.modules.cms.entity.Subject;

public interface SubjectDao extends PagingAndSortingRepository<Subject, Long> {
	
	@Modifying
	@Query("select sub from Subject sub where sub.status='2' and (sub.type='1' or sub.type='3' or sub.type='4') and sub.fatherId = 1 order by id")
	List<Subject> findRoots();
	
	@Modifying
	@Query("select sub.id, sub.fatherId, sub.name from Subject sub where sub.status='2' and (sub.type='1' or sub.type='3' or sub.type='4') and sub.dn like ?1 order by id")
	List<Subject> findAll(String dn);
}
