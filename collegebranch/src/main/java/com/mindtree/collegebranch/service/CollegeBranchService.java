package com.mindtree.collegebranch.service;

import java.util.List;
import java.util.Set;

import com.mindtree.collegebranch.entity.BranchEntity;
import com.mindtree.collegebranch.entity.College;

public interface CollegeBranchService {

	/**
	 * @param college
	 * @return whether college is inserted or not
	 */
	String saveCollege(College college);

	/**
	 * @param college
	 * @param branchEntity
	 * @return  whether branch is inserted or not
	 */
	String saveBranch(College college, BranchEntity branchEntity);

	/**
	 * @return list of colleges
	 */
	List<College> getAllColleges();

	/**
	 * @param branchId
	 * @return branch you want to update
	 */
	BranchEntity update(int branchId);

	/**
	 * @param bId
	 * @param branchStrength
	 * @return whether branch is updated or not 
	 */
	String updateBranch(int bId, int branchStrength);

	/**
	 * @param collegeId
	 * @return  ser of branches
	 */
	Set<BranchEntity> getCollegeDetails(int collegeId);

	/**
	 * @param collegeId
	 * @return the strength og the particular branch
	 */
	int getStrength(int collegeId);

}
