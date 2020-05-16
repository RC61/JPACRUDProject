package com.skilldistillery.pprLeaders.entities;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Player {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	private String position;
	
	@Column(name="total_ppr_points")
	private int pprPoints;
	
	private int touchdowns;
	
	private int receptions;
	
	@Column(name="rec_yards")
	private int recYards;
	
	@Column(name="rush_attempts")
	private int rushAttempts;
	
	@Column(name="rush_yards")
	private int rushYards;
	
	private Double adp;

	public Player(int id, String first_name, String last_name) {
		super();
		this.id = id;
		this.firstName = first_name;
		this.lastName = last_name;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String first_name) {
		this.firstName = first_name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String last_name) {
		this.lastName = last_name;
	}

	@Override
	public String toString() {
		return "Player [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", position=" + position
				+ ", pprPoints=" + pprPoints + ", touchdowns=" + touchdowns + ", receptions=" + receptions
				+ ", recYards=" + recYards + ", rushAttempts=" + rushAttempts + ", rushYards=" + rushYards + ", adp="
				+ adp + "]";
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public int getPprPoints() {
		return pprPoints;
	}

	public void setPprPoints(int pprPoints) {
		this.pprPoints = pprPoints;
	}

	public int getTouchdowns() {
		return touchdowns;
	}

	public void setTouchdowns(int touchdowns) {
		this.touchdowns = touchdowns;
	}

	public int getReceptions() {
		return receptions;
	}

	public void setReceptions(int receptions) {
		this.receptions = receptions;
	}

	public int getRecYards() {
		return recYards;
	}

	public void setRecYards(int recYards) {
		this.recYards = recYards;
	}

	public int getRushAttempts() {
		return rushAttempts;
	}

	public void setRushAttempts(int rushAttempts) {
		this.rushAttempts = rushAttempts;
	}

	public int getRushYards() {
		return rushYards;
	}

	public void setRushYards(int rushYards) {
		this.rushYards = rushYards;
	}

	public Double getAdp() {
		return adp;
	}

	public void setAdp(Double adp) {
		this.adp = adp;
	}

	public Player(int id, String firstName, String lastName, String position, int pprPoints, int touchdowns,
			int receptions, int recYards, int rushAttempts, int rushYards, Double adp) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.position = position;
		this.pprPoints = pprPoints;
		this.touchdowns = touchdowns;
		this.receptions = receptions;
		this.recYards = recYards;
		this.rushAttempts = rushAttempts;
		this.rushYards = rushYards;
		this.adp = adp;
	}
	
	public Player() {
		super();
	}
	
}
