package com.skilldistillery.pprLeaders.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.pprLeaders.data.PprDAO;
import com.skilldistillery.pprLeaders.entities.Player;

@Controller
public class PPRController {
	
	@Autowired
	private PprDAO dao;
	
	@RequestMapping(path="listAll.do")
	public String listEm(Model model) {
		List<Player> players = dao.findAll();
		model.addAttribute("players", players);
		return "listAll";
	}
	
	
	@RequestMapping(path="getPlayer.do")
	public String findPlayer(@RequestParam("pid") Integer pid, Model model) {
		Player p = dao.findById(pid);
		model.addAttribute("player", p);
		return "playerDetail";
	}
	
}
