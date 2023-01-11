package dev.mvc.travel;

import java.util.List;

public interface TravelDAOInter {
	public List<TravelVO> list();
	public int create(TravelVO travelVO);
}
