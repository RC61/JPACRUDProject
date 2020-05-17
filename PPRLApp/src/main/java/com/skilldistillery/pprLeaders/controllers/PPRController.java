package com.skilldistillery.pprLeaders.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.pprLeaders.data.PprDAO;
import com.skilldistillery.pprLeaders.entities.Player;

@Controller
public class PPRController {
	
	@Autowired
	private PprDAO dao;
	
	//FOR THE HOME BUTTON
	@RequestMapping(path="index.do")
	public String headOnHome() {
		return "index";
	}
	
	//LISTS ALL PLAYERS
	@RequestMapping(path="listAll.do")
	public String listAll(Model model) {
		List<Player> players = dao.findAll();
		model.addAttribute("players", players);
		return "listAll";
	}
	
	//FINDS SINGLE PLAYER
	@RequestMapping(path="getPlayer.do")
	public String findPlayer(@RequestParam("pid") Integer pid, Model model) {
		Player p = dao.findById(pid);
		model.addAttribute("player", p);
		return "playerDetail";
	}
	//CREATES PLAYER
	@RequestMapping(path="createPlayer.do", method= RequestMethod.POST)
	public ModelAndView createPlayer(Player player) {
		ModelAndView mv = new ModelAndView();
		Player p = dao.createPlayer(player);
		mv.addObject("player", p);
		mv.setViewName("playerDetail");
		return mv;
	}
	
	
	//BUFFER FOR CREATE PLAYER
	@RequestMapping(path="creationBuffer.do")
	public String moveToCreatePlayerForm() {
		return "createPlayer";
	}
	
	
	//DELETES PLAYER
	@RequestMapping(path="deletePlayer.do", method= RequestMethod.POST)
	public ModelAndView deletePlayer(int id) {
		ModelAndView mv = new ModelAndView();
		boolean result = dao.deletePlayer(id);
		if (result == true) {
			String advisory = "Player deleted successfully.";
			mv.addObject("advisory", advisory);
		}else {
			String advisory = "Deletion unsuccessful.";
			mv.addObject("advisory", advisory);
		}
		
		mv.setViewName("deletionLanding");
		
		return mv;

	}
	
	//BUFFER FOR DELETE PLAYER
	@RequestMapping(path="deletionBuffer.do")
	public ModelAndView moveToDeletePlayerForm(int id) {
		ModelAndView mv = new ModelAndView();
		Player toDelete = dao.findById(id);
		mv.addObject("player", toDelete);
		mv.setViewName("deletionDetail");
		return mv;
	}
	
	@RequestMapping(path="updatePlayer.do", params = "id", method = RequestMethod.GET)
	public ModelAndView moveToUpdatePlayerFrom(int id) {
		ModelAndView mv = new ModelAndView();
		Player updatee = dao.findById(id);
		mv.addObject("player", updatee);
		mv.setViewName("updatePlayer");
		return mv;
	}
	
	@RequestMapping(path="finishUpdatePlayer.do", params = "id")
	public ModelAndView updatePlayer(int id, Player player) {
		ModelAndView mv = new ModelAndView();
		Player updatee = dao.updatePlayer(id, player);
		mv.addObject("player", updatee);
		mv.setViewName("playerDetail");
		return mv;
	}
	
	@RequestMapping(path="keywordSearch.do", params = "keyword")
	public ModelAndView findPlayers(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Player> resultPool = dao.findPlayerWithKeyword(keyword);
		mv.addObject("players", resultPool);
		mv.setViewName("keywordResult");
		return mv;
		
		
	}
	
	
	//FOR THE HOME BUTTON
	@RequestMapping(path="sandBox.do")
	public String headToTheBox() {
		return "sandBox";
	}
	
}
