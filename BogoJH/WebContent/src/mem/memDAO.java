package mem;

public class memDAO {
	private String name; //�̸�
	private String info; //����
	private String humanNum; //�����
	private String path; //���� ���
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
