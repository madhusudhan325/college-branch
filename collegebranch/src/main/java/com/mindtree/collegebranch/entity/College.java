package com.mindtree.collegebranch.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class College 
{
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int collegeId;
	private String collegeName;
	private String location;
	private int numberOfBranches;
	@OneToMany(cascade = CascadeType.PERSIST, mappedBy = "college")
	Set<BranchEntity> branchEntities;
	public College() {
		super();
	}
	
	public College(int collegeId, String collegeName, String location, int numberOfBranches,
			Set<BranchEntity> branchEntities) {
		super();
		this.collegeId = collegeId;
		this.collegeName = collegeName;
		this.location = location;
		this.numberOfBranches = numberOfBranches;
		this.branchEntities = branchEntities;
	}

	public int getCollegeId() {
		return collegeId;
	}
	public void setCollegeId(int collegeId) {
		this.collegeId = collegeId;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public int getNumberOfBranches() {
		return numberOfBranches;
	}
	public void setNumberOfBranches(int numberOfBranches) {
		this.numberOfBranches = numberOfBranches;
	}
	public Set<BranchEntity> getBranchEntities() {
		return branchEntities;
	}
	public void setBranchEntities(Set<BranchEntity> branchEntities) {
		this.branchEntities = branchEntities;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	@Override
	public String toString() {
		return "College [collegeId=" + collegeId + ", collegeName=" + collegeName + ", location=" + location
				+ ", numberOfBranches=" + numberOfBranches + "]";
	}
	
	
	

}
