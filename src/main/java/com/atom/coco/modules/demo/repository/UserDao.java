package com.atom.coco.modules.demo.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.atom.coco.modules.demo.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
