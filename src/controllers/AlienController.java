package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.AlienDAO;
import data.CurrentState;
import entities.Alien;

@Controller
@SessionAttributes("sessionData")
public class AlienController {

	@Autowired
	public AlienDAO alienDAO;

	@ModelAttribute("sessionData")
	public CurrentState initIndex() {
		CurrentState cs = new CurrentState();
		return cs;
	}

	@RequestMapping("add.do")
	public ModelAndView addAlien(Alien alien, @ModelAttribute("sessionData") CurrentState cs) {
		alienDAO.addAlienToList(alien);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("edit.jsp");
		mv.addObject("alien", alien);
		mv.addObject("aliensList", alienDAO.getAliensList());
		return mv;
	}

	@RequestMapping("list.do")
	public ModelAndView getAliensList(@ModelAttribute("sessionData") CurrentState cs) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("aliens.jsp");
		mv.addObject("aliensList", alienDAO.getAliensList());
		return mv;
	}

	@RequestMapping(path = "remove.do", params = "remove")
	public ModelAndView removeAliens(@RequestParam("remove") String name,
			@ModelAttribute("sessionData") CurrentState cs) {
		alienDAO.removeAlienFromList(name);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("aliens.jsp");
		mv.addObject("aliensList", alienDAO.getAliensList());

		return mv;
	}

	@RequestMapping(path = "edit.do")
	public ModelAndView editAlien(@RequestParam("edit") String name, @ModelAttribute("sessionData") CurrentState cs) {
		Alien alien = alienDAO.getAlienByName(name);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("edit.jsp");
		mv.addObject("alien", alien);

		return mv;

	}

	@RequestMapping(path = "update.do")
	public ModelAndView updateAlien(Alien alien, @RequestParam("oldName") String name,
			@ModelAttribute("sessionData") CurrentState cs) {
		Alien oldAlien = alienDAO.getAlienByName(name);
		int index = alienDAO.getAlienIndex(oldAlien);
		alienDAO.updateAlien(index, alien);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("edit.jsp");
		mv.addObject("alien", alien);
		// mv.addObject("aliensList", alienDAO.getAliensList());
		return mv;
	}

	@RequestMapping(path = "sortName.do")
	public ModelAndView sortAliensByName() {
		alienDAO.sortAliensByName();
		ModelAndView mv = new ModelAndView(); // here
		mv.setViewName("list.do");

		return mv;
	}

	@RequestMapping(path = "sortSpecies.do")
	public ModelAndView sortAliensBySpecies() {
		alienDAO.sortAliensBySpecies();
		ModelAndView mv = new ModelAndView(); // here
		mv.setViewName("list.do");

		return mv;
	}

	@RequestMapping(path = "sortStarSystem.do")
	public ModelAndView sortAliensByStarSystem() {
		alienDAO.sortAliensByStarSystem();
		ModelAndView mv = new ModelAndView(); // here
		mv.setViewName("list.do");

		return mv;
	}

	@RequestMapping(path = "sortFaction.do")
	public ModelAndView sortAliensByFaction() {
		alienDAO.sortAliensByFaction();
		ModelAndView mv = new ModelAndView(); // here
		mv.setViewName("list.do");

		return mv;
	}
}
