package com.skilldistillery.soccerTeams.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.soccerTeams.entities.SoccerTeam;

@Service
@Transactional
public class SoccerTeamDAOImpl implements SoccerTeamDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public SoccerTeam findById(int id) {
		em.close();
		return em.find(SoccerTeam.class, id);

	}

	@Override
	public List<SoccerTeam> findByLeague(String league) {
		List<SoccerTeam> teams;
		String jpql = "SELECT team FROM SoccerTeam team WHERE league LIKE '" + "%" + league + "%'";
		teams = em.createQuery(jpql, SoccerTeam.class).getResultList();
		em.close();
		return teams;
	}

	@Override
	public SoccerTeam findByName(String name) {
		String jpql = "SELECT team FROM SoccerTeam team WHERE name LIKE '" + "%" + name + "%'";
		SoccerTeam team = em.createQuery(jpql, SoccerTeam.class).getSingleResult();
		em.close();
		return team;
	}

	@Override
	public SoccerTeam createTeam(SoccerTeam team) {
		em.persist(team);
		em.flush();
		em.close();
		return team;

	}

	@Override
	public SoccerTeam updateTeam(SoccerTeam team, int id) {
		System.out.println(team);
		SoccerTeam newTeam = em.find(SoccerTeam.class, id);
		newTeam.setCity(team.getCity());
		newTeam.setCountry(team.getCountry());
		newTeam.setDomesticTitles(team.getDomesticTitles());
		newTeam.setLeague(team.getLeague());
		newTeam.setName(team.getName());
		newTeam.setStadium(team.getStadium());
		em.close();
		return newTeam;
	}

	@Override
	public SoccerTeam deleteTeam(int id) {
		SoccerTeam deleteTeam = em.find(SoccerTeam.class, id);
		em.remove(deleteTeam);
		em.close();
		return deleteTeam;
	}

}
