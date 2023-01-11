package dev.mvc.travel;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TravelCont {
	@Autowired
	@Qualifier("dev.mvc.travel.TravelProc")
	private TravelProcInter travelProc = null;
	
	public TravelCont() {
		
	}
	
	@RequestMapping(value="/travel/travelgrp_list.do", method=RequestMethod.GET )
	  public ModelAndView list() {
	    ModelAndView mav = new ModelAndView();
	    
	    List<TravelVO> list = this.travelProc.list();
	    mav.addObject("list", list); 

	    mav.setViewName("/travel/travelgrp_list");
	    return mav;
	}
	
	@RequestMapping(value = {"/travel/tab1.do"}, method = RequestMethod.GET)
	  public String tab1() {

	      return "/travel/tab1";
	}
	
	@RequestMapping(value = {"/travel/tab2.do"}, method = RequestMethod.GET)
	  public String tab2() {

	      return "/travel/tab2";
	}
	
	@RequestMapping(value = {"/travel/tab3.do"}, method = RequestMethod.GET)
	  public String tab3() {

	      return "/travel/tab3";
	}
}
