package com.mindtree.collegebranch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mindtree.collegebranch.entity.BranchEntity;
import com.mindtree.collegebranch.entity.College;
import com.mindtree.collegebranch.service.CollegeBranchService;

@Controller
public class CollegeAppController {
	static int bId;
	@Autowired
	CollegeBranchService collegeBranchService;

	@GetMapping(path = "/")
	public String index() {
		return "index";
	}

	@GetMapping(path = "/college")
	public String addCollege() {
		return "add-college";
	}

	@PostMapping(path = "/saveCollege")
	public String saveCollege(College college, Model model) {

		model.addAttribute("message", collegeBranchService.saveCollege(college));
		return "add-college";
	}

	@GetMapping(path = "/branch")
	public String addBranch(Model model) {
		model.addAttribute("colleges", collegeBranchService.getAllColleges());
		return "add-branch";
	}

	@PostMapping(path = "/saveBranch")
	public String saveBranch(College college, BranchEntity branchEntity, Model model) {
		model.addAttribute("message", collegeBranchService.saveBranch(college, branchEntity));
		return "add-branch";
	}

	@GetMapping(path = "/getCollege")
	public String getCollege(Model model) {
		model.addAttribute("colleges", collegeBranchService.getAllColleges());
		return "view-college";
	}

	@GetMapping(path = "/getCollegeDetails")
	public String getCollegeDetails(Model model, int collegeId) {
		model.addAttribute("colleges", collegeBranchService.getAllColleges());
		model.addAttribute("branches", collegeBranchService.getCollegeDetails(collegeId));
		model.addAttribute("strength", collegeBranchService.getStrength(collegeId));
		return "view-college";
	}

	@RequestMapping(path = "/update/{branchId}", method = RequestMethod.GET)
	public String update(Model model, @PathVariable int branchId) {
		bId = branchId;
		model.addAttribute("branch", collegeBranchService.update(branchId));
		return "update";
	}

	@RequestMapping(path = "/updateBranch", method = RequestMethod.POST)
	public String updateDebitCard(Model model, int branchStrength) {
		model.addAttribute("message", collegeBranchService.updateBranch(bId, branchStrength));
		return "update";
	}

}
