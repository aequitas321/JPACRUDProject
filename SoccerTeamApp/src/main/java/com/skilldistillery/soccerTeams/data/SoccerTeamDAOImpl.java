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
		return em.find(SoccerTeam.class, id);

	}

	@Override
	public List<SoccerTeam> findByLeague(String league) {
		List<SoccerTeam> teams;
		String jpql = "SELECT team FROM SoccerTeam team WHERE league LIKE '" + "%" + league + "%'";
		teams = em.createQuery(jpql, SoccerTeam.class).getResultList();
		return teams;
	}

	@Override
	public SoccerTeam findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
