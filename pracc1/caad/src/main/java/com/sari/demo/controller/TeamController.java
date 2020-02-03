package com.sari.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sari.demo.model.LG;
import com.sari.demo.model.PlayerLg;
import com.sari.demo.model.PlayerSa;
import com.sari.demo.model.Samsung;
import com.sari.demo.repository.TeamRepository;

@Controller
public class TeamController {

	@Autowired
	TeamRepository tRepo;
	
	@GetMapping("/baselist")
	public String Home(Model model) {
		List<PlayerSa> playsa = tRepo.findPSaAll();
		List<PlayerLg> playlg = tRepo.findPLgAll();		
		List<Samsung> teams = tRepo.findAll();
		List<LG> teams1 = tRepo.findLGAll();
		model.addAttribute("playsa", playsa);
		model.addAttribute("playlg", playlg);
		model.addAttribute("teams", teams);
		model.addAttribute("teams1", teams1);
		System.out.println("팀정보 조회성공");
		return "Team/test";
	}
	@GetMapping("/baselist2")
	public String Home2(Model model) {
		List<PlayerSa> playsa = tRepo.findPSaAll();
		List<PlayerLg> playlg = tRepo.findPLgAll();		
		List<Samsung> teams = tRepo.findAll();
		List<LG> teams1 = tRepo.findLGAll();
		model.addAttribute("playsa", playsa);
		model.addAttribute("playlg", playlg);
		model.addAttribute("teams", teams);
		model.addAttribute("teams1", teams1);
		System.out.println("팀정보 조회성공");
		return "Team/ajaxtest";
	}
	
	
	/*
	 * @GetMapping("/test123") public String Test12() { return "Team/test"; }
	 */
	
	@GetMapping("/salist")
	public @ResponseBody List<PlayerSa> samsung() {
		List<PlayerSa>  playsa = tRepo.findPSaAll();
		return playsa;
	}
	
	@GetMapping("/lglist")
	public @ResponseBody List<PlayerLg> Lg() {
		List<PlayerLg>  playlg = tRepo.findPLgAll();
		return playlg;
	}
	
	
	
	//@GetMapping("/samsung")
	///public @ResponseBody List<Samsung> samsung() {
	//	List<Samsung> teams= tRepo.SamsungAll();
		//return teams;
	//}
	//@GetMapping("/LG")
	//public @ResponseBody List<LG> Lg() {
	//	List<LG> teams1= tRepo.LGAll();
	//	return teams1;
	//}
	
}
