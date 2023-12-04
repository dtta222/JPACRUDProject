package com.skilldistillery.jpavolleyballroster.data;

import java.util.List;

import com.skilldistillery.jpavolleyballroster.entities.Player;

public interface PlayerDAO {
	
	Player findById(int playerId);
	List<Player> findByName(String playerName);
	List<Player> findAll();
	Player addPlayer(Player player);
	Player updatePlayer(int playerId, Player player);
	boolean deleteById(int playerId);
	List<Player> findByFirstNameOrLastName(String search);
	
}
