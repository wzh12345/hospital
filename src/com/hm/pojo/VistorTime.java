package com.hm.pojo;

public class VistorTime {

	private int tid;//出诊信息id
	private String dateTime;//出诊时间
	private int mvistor;//上午出诊数
	private int mmoney;//上午出诊需要的诊费
	private int avistor;//下午出诊数
	private int amoney;//下午出诊需要的诊费
	private int gvistor;//晚上出诊数
	private int gmoney;//晚上出诊需要的诊费
	private String address;//出诊地址
	private int did;//医生id
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getDateTime() {
		return dateTime;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	public int getMvistor() {
		return mvistor;
	}
	public void setMvistor(int mvistor) {
		this.mvistor = mvistor;
	}
	public int getMmoney() {
		return mmoney;
	}
	public void setMmoney(int mmoney) {
		this.mmoney = mmoney;
	}
	public int getAvistor() {
		return avistor;
	}
	public void setAvistor(int avistor) {
		this.avistor = avistor;
	}
	public int getAmoney() {
		return amoney;
	}
	public void setAmoney(int amoney) {
		this.amoney = amoney;
	}
	public int getGvistor() {
		return gvistor;
	}
	public void setGvistor(int gvistor) {
		this.gvistor = gvistor;
	}
	public int getGmoney() {
		return gmoney;
	}
	public void setGmoney(int gmoney) {
		this.gmoney = gmoney;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
}
