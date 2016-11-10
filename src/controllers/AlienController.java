package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.AlienDAO;
import entities.Alien;

@Controller
public class AlienController {
	
	@Autowired
	public AlienDAO alienDAO;
	
	
  @RequestMapping("add.do")
  public ModelAndView addAlien(Alien alien) {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("index.jsp");
    mv.addObject("alien", alien);
    return mv;
  }
}
