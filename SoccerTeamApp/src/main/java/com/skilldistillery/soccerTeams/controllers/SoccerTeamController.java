package com.skilldistillery.soccerTeams.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.soccerTeams.data.SoccerTeamDAO;
import com.skilldistillery.soccerTeams.entities.SoccerTeam;

@Controller
public class SoccerTeamController {

	@Autowired
	private SoccerTeamDAO dao;

	@RequestMapping(path = "index.do")
	public String goHome() {
		return "index";
	}

	@RequestMapping(path = "getSoccerTeam.do")
	public String findSoccerTeam(@RequestParam Integer id, Model model) {
		SoccerTeam team = dao.findById(id);
		model.addAttribute("team", team);
		return "teamInfo";
	}

	@RequestMapping(path = "searchByLeague.do")
	public String searchByLeague() {
		return "searchbyleague";
	}

	@RequestMapping(path = "getTeamByLeague.do")
	public String findTeamByLeague(@RequestParam String league, Model model) {
		List<SoccerTeam> teams = dao.findByLeague(league);
		model.addAttribute("teams", teams);
		return "teambyleague";
	}
}
