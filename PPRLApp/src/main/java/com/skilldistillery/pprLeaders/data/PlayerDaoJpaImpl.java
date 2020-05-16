package com.skilldistillery.pprLeaders.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pprLeaders.entities.Player;

@Service
@Transactional
public class PlayerDaoJpaImpl implements PprDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Player findById(int id) {
		
		return em.find(Player.class, id);
	}

	@Override
	public List<Player> findAll() {
		String jpql = "SELECT p FROM Player p";
		List<Player> players;
		players = em.createQuery(jpql, Player.class).getResultList();
		return players;
	}

	@Override
	public Player createPlayer(Player newPlayer) {
		em.persist(newPlayer);
		em.flush();
		return newPlayer;
	}

}
