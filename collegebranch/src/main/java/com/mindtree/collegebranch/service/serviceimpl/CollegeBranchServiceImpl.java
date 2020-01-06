package com.mindtree.collegebranch.service.serviceimpl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.collegebranch.entity.BranchEntity;
import com.mindtree.collegebranch.entity.College;
import com.mindtree.collegebranch.repository.BranchRepository;
import com.mindtree.collegebranch.repository.CollegeRepository;
import com.mindtree.collegebranch.service.CollegeBranchService;

@Service
public class CollegeBranchServiceImpl implements CollegeBranchService
{
	@Autowired
	CollegeRepository collegeRepository;
	
	@Autowired
	BranchRepository branchRepository;
	
	

	@Override
	public String saveCollege(College college) 
	{	
		collegeRepository.save(college);
		return "College Added SUccessfully";	
	}



	@Override
	public String saveBranch(College college, BranchEntity branchEntity) 
	{
		College college2 = collegeRepository.findById(college.getCollegeId()).get();
		System.out.println(college2.toString());
		
		/*classSection.getStudents().size() < classSection.getStudentCount()) 

		if(college2.getBranchEntities() == null)
		{
			branchRepository.saveAndFlush(branchEntity);
			branchEntity.setCollege(college2);	
		}*/
		if(college2.getBranchEntities().size() < college2.getNumberOfBranches() )
		{
			branchRepository.saveAndFlush(branchEntity);
			branchEntity.setCollege(college2);	
		}
		else
		{
			return "Branch Count exceeded... No more branches could be added";
		}
		
		collegeRepository.saveAndFlush(college2);
		
		
		return "Branch Added Successfully";
				
	}



	@Override
	public List<College> getAllColleges() {
		// TODO Auto-generated method stub
		return collegeRepository.findAll();
	}



	@Override
	public BranchEntity update(int branchId) 
	{
		BranchEntity branchEntity = branchRepository.findById(branchId).get();
		return branchEntity;
	}



	@Override
	public String updateBranch(int bId, int branchStrength) 
	{
		BranchEntity branchEntity = branchRepository.findById(bId).get();
		
		branchEntity.setBranchStrength(branchStrength);
		branchRepository.saveAndFlush(branchEntity);
		return "updated successfully";
	}



	@Override
	public Set<BranchEntity> getCollegeDetails(int collegeId) 
	{
		
		return collegeRepository.findById(collegeId).get().getBranchEntities();
	}



	@Override
	public int getStrength(int collegeId) 
	{
		Set<BranchEntity> branchEntities = collegeRepository.findById(collegeId).get().getBranchEntities();
		int sum = 0;
		for (BranchEntity branchEntity : branchEntities) 
		{
			sum = sum + branchEntity.getBranchStrength();
			
		}
		return sum;
	}
	
	
	
}
