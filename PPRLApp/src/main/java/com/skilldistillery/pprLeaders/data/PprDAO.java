package com.skilldistillery.pprLeaders.data;

import java.util.List;

import com.skilldistillery.pprLeaders.entities.Player;

public interface PprDAO {
	public Player findById(int id);
	public Player createPlayer(Player newPlayer);
	List<Player> findAll();
	
	

}
