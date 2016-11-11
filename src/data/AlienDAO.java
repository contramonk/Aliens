package data;

import java.util.List;

import org.springframework.stereotype.Repository;

import entities.Alien;

@Repository
public interface AlienDAO {
	
	void addAlienToList(Alien alien);
	List<Alien> getAliensList();
	void removeAlienFromList(String name);
	Alien getAlienByName(String name);
	void updateAlien(int index, Alien alien);
	int getAlienIndex(Alien alien);
}



