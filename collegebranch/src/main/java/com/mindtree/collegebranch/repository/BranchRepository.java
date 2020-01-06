package com.mindtree.collegebranch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.collegebranch.entity.BranchEntity;

@Repository
public interface BranchRepository   extends JpaRepository<BranchEntity, Integer> {

}
