package mem;

public class memDAO {
	private String name; //이름
	private String info; //정보
	private String humanNum; //사람수
	private String path; //파일 경로
	public memDAO(String name, String info, String humanNum, String path) {
		super();
		this.name = name;
		this.info = info;
		this.humanNum = humanNum;
		this.path = path;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getHumanNum() {
		return humanNum;
	}
	public void setHumanNum(String humanNum) {
		this.humanNum = humanNum;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
}
