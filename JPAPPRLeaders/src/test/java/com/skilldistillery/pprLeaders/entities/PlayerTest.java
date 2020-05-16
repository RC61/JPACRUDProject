package com.skilldistillery.pprLeaders.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import com.skilldistillery.pprLeaders.entities.Player;

class PlayerTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Player player;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("PPRLeadersPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		player = em.find(Player.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		player = null;
		em.close();
	}

	@Test
	@DisplayName("Testing player mappings")
	void test() {
		assertNotNull(player);
		assertEquals("Create", player.getFirstName());
		assertEquals("APlayer", player.getLastName());
		assertEquals(1, player.getPprPoints());
	}

}
