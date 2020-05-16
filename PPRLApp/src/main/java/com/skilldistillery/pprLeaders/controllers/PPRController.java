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
	
	@RequestMapping(path="createPlayerForm.do")
	public String moveToCreatePlayerForm() {
		return "createPlayer";
	}
	
}
