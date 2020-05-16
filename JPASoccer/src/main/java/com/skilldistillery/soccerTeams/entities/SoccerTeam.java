package com.skilldistillery.soccerTeams.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "soccer_team")
public class SoccerTeam {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private String league;

	private String city;

	private String country;

	private String stadium;

	@Column(name = "domestic_titles_won")
	private Integer domesticTitles;

	@Column(name = "team_logo_url")
	private String teamLogo;

	public SoccerTeam() {
		super();
	}

	public SoccerTeam(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public SoccerTeam(int id, String name, String league, String city, String country, String stadium,
			Integer domesticTitles, String teamLogo) {
		super();
		this.id = id;
		this.name = name;
		this.league = league;
		this.city = city;
		this.country = country;
		this.stadium = stadium;
		this.domesticTitles = domesticTitles;
		this.teamLogo = teamLogo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLeague() {
		return league;
	}

	public void setLeague(String league) {
		this.league = league;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getStadium() {
		return stadium;
	}

	public void setStadium(String stadium) {
		this.stadium = stadium;
	}

	public Integer getDomesticTitles() {
		return domesticTitles;
	}

	public void setDomesticTitles(Integer domesticTitles) {
		this.domesticTitles = domesticTitles;
	}

	public String getTeamLogo() {
		return teamLogo;
	}

	public void setTeamLogo(String teamLogo) {
		this.teamLogo = teamLogo;
	}

	@Override
	public String toString() {
		return "SoccerTeam [id=" + id + ", name=" + name + ", league=" + league + ", city=" + city + ", country="
				+ country + ", stadium=" + stadium + ", domesticTitles=" + domesticTitles + ", teamLogo=" + teamLogo
				+ "]";
	}

}
