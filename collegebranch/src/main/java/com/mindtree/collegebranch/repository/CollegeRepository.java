package com.mindtree.collegebranch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.collegebranch.entity.College;

@Repository
public interface CollegeRepository extends JpaRepository<College, Integer> {

}
