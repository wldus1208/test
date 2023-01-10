package dev.mvc.travel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
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
}
