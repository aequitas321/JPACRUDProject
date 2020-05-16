package com.skilldistillery.soccerTeams.data;

import java.util.List;

import com.skilldistillery.soccerTeams.entities.SoccerTeam;

public interface SoccerTeamDAO {

	public SoccerTeam findById(int id);
	
	public List<SoccerTeam> findByLeague(String league);
	
	public SoccerTeam findByName(String name);
}
