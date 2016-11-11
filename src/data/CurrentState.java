package data;

import entities.Alien;

public class CurrentState {
	private Alien alien;
	private Integer index;

	public CurrentState() {
		this.index = 0;
	}

	public void increment() {
		this.index++;
	}

	public void decrement() {
		this.index--;
	}

	public void setIndex(int i) {
		this.index = i;
	}

	public Integer getIndex() {
		return index;
	}

	public Alien getAlien() {
		return alien;
	}

	public void setAlien(Alien alien) {
		this.alien = alien;
	}
}
