package dev.mvc.travel;

import java.util.List;

public interface TravelProcInter {
	public List<TravelVO> list();
	public int create(TravelVO travelVO);
}
