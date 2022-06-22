package board.service;

public class BoardVO {
	
	// 캡슐화 : 접근지정자
	private int unq;
	private String ym;
	private String admi_nm;
	private String sensor_nm;
	private String avrg_tp;
	private String avrg_hd;
	private String avrg_ulfptc_dnsty;
	private String avrg_minudust_dnsty;
	private String avrg_ulvry_idex;
	
	// 페이징 처리위해
	private int viewPage = 1;
	private int startIndex = 1;
	private int endIndex = 10;
	
	//게시판 서치
	private String searchGubun;
	private String searchText;
	
	// get*set 메소드 처리
	public int getUnq() {
		return unq;
	}
	public void setUnq(int unq) {
		this.unq = unq;
	}
	public String getYm() {
		return ym;
	}
	public void setYm(String ym) {
		this.ym = ym;
	}
	public String getAdmi_nm() {
		return admi_nm;
	}
	public void setAdmi_nm(String admi_nm) {
		this.admi_nm = admi_nm;
	}
	public String getSensor_nm() {
		return sensor_nm;
	}
	public void setSensor_nm(String sensor_nm) {
		this.sensor_nm = sensor_nm;
	}
	public String getAvrg_tp() {
		return avrg_tp;
	}
	public void setAvrg_tp(String avrg_tp) {
		this.avrg_tp = avrg_tp;
	}
	public String getAvrg_hd() {
		return avrg_hd;
	}
	public void setAvrg_hd(String avrg_hd) {
		this.avrg_hd = avrg_hd;
	}
	public String getAvrg_ulfptc_dnsty() {
		return avrg_ulfptc_dnsty;
	}
	public void setAvrg_ulfptc_dnsty(String avrg_ulfptc_dnsty) {
		this.avrg_ulfptc_dnsty = avrg_ulfptc_dnsty;
	}
	public String getAvrg_minudust_dnsty() {
		return avrg_minudust_dnsty;
	}
	public void setAvrg_minudust_dnsty(String avrg_minudust_dnsty) {
		this.avrg_minudust_dnsty = avrg_minudust_dnsty;
	}
	public String getAvrg_ulvry_idex() {
		return avrg_ulvry_idex;
	}
	public void setAvrg_ulvry_idex(String avrg_ulvry_idex) {
		this.avrg_ulvry_idex = avrg_ulvry_idex;
	}	
	
	//페이징 위한 get/set
	public int getViewPage() {
		return viewPage;
	}
	public void setViewPage(int viewPage) {
		this.viewPage = viewPage;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public int getEndIndex() {
		return endIndex;
	}
	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}
	
	
	//게시판 서칭위한 get/set
	public String getSearchGubun() {
		return searchGubun;
	}
	public void setSearchGubun(String searchGubun) {
		this.searchGubun = searchGubun;
	}
	public String getSearchText() {
		return searchText;
	}
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}	
	
}
