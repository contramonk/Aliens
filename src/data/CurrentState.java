package data;

public class CurrentState {

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
}
