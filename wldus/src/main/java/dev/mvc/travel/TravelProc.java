package dev.mvc.travel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("dev.mvc.travel.TravelProc")
public class TravelProc implements TravelProcInter {
	@Autowired
	private TravelDAOInter travelDAO;
	
	public TravelProc() {
		
	}

	@Override
	public List<TravelVO> list() {
		List<TravelVO> list = this.travelDAO.list();
	    return list;
	}
	
	@Override
	  public int create(TravelVO travelVO) {
	    int cnt = this.travelDAO.create(travelVO);
	    return cnt;
	  }

}
