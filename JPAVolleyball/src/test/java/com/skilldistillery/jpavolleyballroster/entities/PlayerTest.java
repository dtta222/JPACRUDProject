package com.skilldistillery.jpavolleyballroster.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class PlayerTest {
    private static EntityManagerFactory emf;
    private EntityManager em;
    private Player player;

    @BeforeAll
    static void setUpBeforeClass() throws Exception {
        emf = Persistence.createEntityManagerFactory("JPAVolleyball");
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
        em.close();
        player = null;
    }

    @Test
    void test_Player_entity_mapping() {
        assertNotNull(player);

        assertEquals(1, player.getId());
        assertEquals("Matt", player.getFirstName());
        assertEquals("Anderson", player.getLastName());
        assertEquals("1", player.getJerseyNumber());
        assertEquals("Opposite", player.getPosition());
        assertEquals("6-10", player.getHeight());
        assertEquals("08-18-1987", player.getBirthDate());
    }
}
