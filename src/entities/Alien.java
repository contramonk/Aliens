package entities;

public class Alien {
	private String species;
	private String starSystem;
	private String name;
	private String image;
	private String faction;
	
	public Alien() {
		
	}
	public Alien(String name, String species, String starSystem, String faction, String image) {
		this.species = species;
		this.starSystem = starSystem;
		this.name = name;
		this.image = image;
		this.faction = faction;
	}
	public String getSpecies() {
		return species;
	}
	public String getStarSystem() {
		return starSystem;
	}
	public String getName() {
		return name;
	}
	public void setSpecies(String species) {
		this.species = species;
	}
	public void setStarSystem(String starSystem) {
		this.starSystem = starSystem;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getFaction() {
		return faction;
	}
	public void setFaction(String faction) {
		this.faction = faction;
	}
	
	
	
}
