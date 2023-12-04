package com.skilldistillery.jpavolleyballroster.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpavolleyballroster.entities.Player;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class PlayerDAOImpl implements PlayerDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Player> findAll() {
		String jpql = "SELECT p FROM Player p";

		List<Player> players = em.createQuery(jpql, Player.class).getResultList();

		return players;
	}

	@Override
	public Player findById(int playerId) {
		return em.find(Player.class, playerId);
	}

	@Override
    public List<Player> findByName(String playerName) {
        String jpql = "SELECT p FROM Player p WHERE p.firstName = :name OR p.lastName = :name";
        List<Player> players = em.createQuery(jpql, Player.class)
                                  .setParameter("name", playerName)
                                  .getResultList();
        //return players.isEmpty() ? null : players.get(0);
        return players;
    }

    @Override
    public Player addPlayer(Player player) {
        em.persist(player);
        return player;
    }

    @Override
    public Player updatePlayer(int playerId, Player updatedPlayer) {
        Player existingPlayer = em.find(Player.class, playerId);
        if (existingPlayer != null) {
            existingPlayer.setFirstName(updatedPlayer.getFirstName());
            existingPlayer.setLastName(updatedPlayer.getLastName());
            existingPlayer.setJerseyNumber(updatedPlayer.getJerseyNumber());
            existingPlayer.setPosition(updatedPlayer.getPosition());
            existingPlayer.setHeight(updatedPlayer.getHeight());
            existingPlayer.setBirthDate(updatedPlayer.getBirthDate());
        }
        return existingPlayer;
    }

    @Override
    public boolean deleteById(int playerId) {
        Player playerToDelete = em.find(Player.class, playerId);
        if (playerToDelete != null) {
            em.remove(playerToDelete);
            return true;
        }
        return false;
    }

    @Override
    public List<Player> findByFirstNameOrLastName(String search) {
        String jpql = "SELECT p FROM Player p WHERE p.firstName LIKE :search OR p.lastName LIKE :search";
        List<Player> players = em.createQuery(jpql, Player.class)
                                  .setParameter("search", "%" + search + "%")
                                  .getResultList();
        return players;
    }


}
