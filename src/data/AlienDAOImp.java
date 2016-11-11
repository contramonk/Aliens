package data;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.WebApplicationContext;

import entities.Alien;

@Repository
public class AlienDAOImp implements AlienDAO {
	private static final String FILE_NAME = "/WEB-INF/alien-data.csv";
	private List<Alien> AliensList = new ArrayList<>();

	@Autowired
	private WebApplicationContext wac;

	@PostConstruct
	public void init() {
		System.out.println("init");
		try (InputStream is = wac.getServletContext().getResourceAsStream(FILE_NAME);
				BufferedReader buf = new BufferedReader(new InputStreamReader(is));) {

			String line = buf.readLine();
			while ((line = buf.readLine()) != null) {
				String[] tokens = line.split(",");
				String name = tokens[0];
				String species = tokens[1];
				String starSystem = tokens[2];
				String faction = tokens[3];
				String image = tokens[4];

				AliensList.add(new Alien(name, species, starSystem, faction, image));
			}
		} catch (Exception e) {
			System.err.println(e);
		}
	}

	@Override
	public void addAlienToList(Alien alien) {
		AliensList.add(alien);
	}

	@Override
	public List<Alien> getAliensList() {
		return AliensList;
	}

	public void removeAlienFromList(String name) {
		Alien alienToRemove = null;
		System.out.println("inDAORemoveLoop");
		for (Alien alien : AliensList) {
			if (alien.getName().equals(name)) {
				alienToRemove = alien;
			}
		}
		if(alienToRemove!=null) {
		AliensList.remove(alienToRemove);
		}
	}
	
	public Alien getAlienByName(String name) {
		Alien alienToFind = null;
		for (Alien alien : AliensList) {
			if (alien.getName().equals(name)) {
				return alien;
			}
			return null;
		}
	}

}