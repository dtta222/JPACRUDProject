package com.skilldistillery.jpavolleyballroster.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpavolleyballroster.data.PlayerDAO;
import com.skilldistillery.jpavolleyballroster.entities.Player;

@Controller
public class PlayerController {

	@Autowired
	private PlayerDAO playerDAO;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		return "home";
	}
	
	@RequestMapping(path = "searchPlayers.do", method = RequestMethod.GET)
	public String searchPlayers(@RequestParam(value = "search", required = false) String search, Model model) {
	    List<Player> searchResults;

	    if (search != null && !search.trim().isEmpty()) {
	        // Perform the search by ID or name
	        try {
	            Integer playerId = Integer.parseInt(search);
	            // If the search input is a valid integer, search by player ID
	            Player playerById = playerDAO.findById(playerId);
	            searchResults = playerById != null ? List.of(playerById) : List.of();
	        } catch (NumberFormatException e) {
	            // If the search input is not a valid integer, search by player name
	            searchResults = playerDAO.findByFirstNameOrLastName(search);
	        }
	    } else {
	        // If no search criteria provided, return all players
	        searchResults = playerDAO.findAll();
	    }

	    model.addAttribute("playerList", searchResults);
	    return "player/showPlayers";
	}


	@RequestMapping(path = "getPlayer.do")
	public String showPlayer(@RequestParam("playerId") Integer playerId, Model model) {
		Player player = playerDAO.findById(playerId);
		model.addAttribute("player", player);
		return "player/showPlayer";
	}

	@RequestMapping(path = "getPlayers.do")
	public String showPlayers(Model model) {
		model.addAttribute("playerList", playerDAO.findAll());
		return "player/showPlayers";
	}

	@RequestMapping(path = "addPlayerForm", method = RequestMethod.GET)
	public String showAddPlayerForm() {
		return "addPlayerForm";
	}

	@RequestMapping(path = "addPlayer.do", method = RequestMethod.POST)
	public String addPlayer(@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
			@RequestParam("jerseyNumber") String jerseyNumber, @RequestParam("position") String position,
			@RequestParam("height") String height, @RequestParam("birthDate") String birthDate) {
		// Now you have access to the form data

		// Create a new Player object and set its properties
		Player newPlayer = new Player();
		newPlayer.setFirstName(firstName);
		newPlayer.setLastName(lastName);
		newPlayer.setJerseyNumber(jerseyNumber);
		newPlayer.setPosition(position);
		newPlayer.setHeight(height);
		newPlayer.setBirthDate(birthDate);

		// Add logic to save the new player to the database using the PlayerDAO
		playerDAO.addPlayer(newPlayer);

		// Redirect to the appropriate page after adding the player
		return "redirect:getPlayers.do"; // Redirect to the player list page
	}


	@RequestMapping(path = "editPlayerForm", method = RequestMethod.GET)
	public String showEditPlayerForm(@RequestParam("playerId") Integer playerId, Model model) {
		Player player = playerDAO.findById(playerId);
		model.addAttribute("player", player);
		return "editPlayerForm";
	}

	@RequestMapping(path = "editPlayer.do", method = RequestMethod.POST)
	public String editPlayer(@RequestParam("playerId") Integer playerId, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("jerseyNumber") String jerseyNumber,
			@RequestParam("position") String position, @RequestParam("height") String height,
			@RequestParam("birthDate") String birthDate) {
		// Retrieve the existing player from the database
		Player existingPlayer = playerDAO.findById(playerId);

		// Update the player's properties with the new values
		existingPlayer.setFirstName(firstName);
		existingPlayer.setLastName(lastName);
		existingPlayer.setJerseyNumber(jerseyNumber);
		existingPlayer.setPosition(position);
		existingPlayer.setHeight(height);
		existingPlayer.setBirthDate(birthDate);

		// Save the updated player to the database
		playerDAO.updatePlayer(playerId, existingPlayer);

		// Redirect to the player list page
		return "redirect:getPlayers.do";
	}

	@RequestMapping(path = "removePlayer.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String removePlayer(@RequestParam("playerId") Integer playerId) {
	    // Logic to remove the player
	    playerDAO.deleteById(playerId);
	    return "redirect:getPlayers.do";
	}


}
