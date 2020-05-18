package com.skilldistillery.soccerTeams.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	@RequestMapping(path = "searchById.do")
	public String searchById() {
		return "searchById";
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

	@RequestMapping(path = "create.do")
	public String create() {
		return "create";
	}

	@RequestMapping(path = "createTeam.do", method = RequestMethod.POST)
	public String createTeam(SoccerTeam team, Model model) {
		SoccerTeam teamToCreate = dao.createTeam(team);
		model.addAttribute("teamToCreate", teamToCreate);
		return "teamCreated";
	}

	@RequestMapping(path = "update.do")
	public String teamToUpdate(@RequestParam Integer id, Model model) {
		SoccerTeam teamUpdate = dao.findById(id);
		model.addAttribute("teamUpdate", teamUpdate);
		System.out.println(teamUpdate);
		return "update";
	}

	@RequestMapping(path = "updatedTeam.do", method = RequestMethod.POST)
	public String updatedTeam(@RequestParam int id, SoccerTeam team, Model model) {
		SoccerTeam teamUpdated = dao.updateTeam(team, id);
		model.addAttribute("teamUpdated", teamUpdated);
		return "teamUpdated";

	}

	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public String deleteTeam(@RequestParam int id, Model model) {
		SoccerTeam teamDelete = dao.deleteTeam(id);
		model.addAttribute("teamDelete", teamDelete);
		return "deleteTeam";
	}
}
