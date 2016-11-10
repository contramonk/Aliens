package data;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;

import entities.Alien;

public class AlienDAOImp implements AlienDAO {
	private static final String FILE_NAME = "WEB-INF/alien-data.csv";
	private List<Alien> AliensList = new ArrayList<>();

	@Autowired
	private WebApplicationContext wac;

	public void init() {
		try (InputStream is = wac.getServletContext().getResourceAsStream(FILE_NAME);
				BufferedReader buf = new BufferedReader(new InputStreamReader(is));) {
			
			String line = buf.readLine();
			while ((line = buf.readLine()) != null) {
				String[] tokens = line.split(",");
				String name = tokens[1];
				String species = tokens[2];
				String starSystem = tokens[3];
				String image = tokens[4];

				AliensList.add(new Alien(name, species, starSystem, image));
			}
		} catch (Exception e) {
			System.err.println(e);
		}
	}
	public void addAlienToList(Alien alien) {
		AliensList.add(alien);
	}

}