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

	public Player(int id, String first_name, String last_name) {
		super();
		this.id = id;
		this.firstName = first_name;
		this.lastName = last_name;
	}

	public Player() {
		super();
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
		return "Player [id=" + id + ", first_name=" + firstName + ", last_name=" + lastName + "]";
	}
	
	
}
