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

	@Override
	public boolean deletePlayer(int id) {
		em.remove(em.find(Player.class, id));
		em.flush();
		boolean stillContains = em.contains(em.find(Player.class, id));
		System.out.println(stillContains);
		return !stillContains;
	}

	@Override
	public Player updatePlayer(int id, Player player) {
		
		
		Player updatee = em.find(Player.class, id);
		
		
		updatee.setFirstName(player.getFirstName());
		updatee.setLastName(player.getLastName());
		updatee.setPosition(player.getPosition());
		updatee.setPprPoints(player.getPprPoints());
		updatee.setTouchdowns(player.getTouchdowns());
		updatee.setReceptions(player.getReceptions());
		updatee.setRecYards(player.getRecYards());
		updatee.setRushAttempts(player.getRushAttempts());
		updatee.setRushYards(player.getRushYards());
		updatee.setAdp(player.getAdp());
		em.flush();
		
		
		return updatee;
	}

	@Override
	public List<Player> findPlayerWithKeyword(String keyword) {
		List<Player> resultPool = null;
		String jpql = "Select find from Player find where find.lastName like :key or find.firstName like :key or find.position like :key";
		resultPool = em.createQuery(jpql, Player.class).setParameter("key", keyword).getResultList();
		return resultPool;
	}

}
