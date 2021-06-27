package mem;

public class Send {
	private String day;
	private String category;
	private int num;
	
	public Send(String day, String category, int num) {
		super();
		this.day = day;
		this.category = category;
		this.num=num;
	}
	public Send(String day, int num) {
		this.day=day;
		this.num=num;
	}

	public String getDay() {
		return day;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
}
