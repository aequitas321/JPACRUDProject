package com.skilldistillery.soccerTeams.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class soccerTeamTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private SoccerTeam soccerTeam;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("Soccer");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		soccerTeam = em.find(SoccerTeam.class, 4);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		soccerTeam = null;
	}

	@Test
	void test() {
		assertNotNull(soccerTeam);
		assertEquals("Borussia Dortmund", soccerTeam.getName());
		assertEquals("Bundesliga", soccerTeam.getLeague());
		assertEquals("Dortmund", soccerTeam.getCity());
		assertEquals("Germany", soccerTeam.getCountry());
		assertEquals("Signal Iduna Park", soccerTeam.getStadium());
		assertEquals(5, soccerTeam.getDomesticTitles());
	}

}
