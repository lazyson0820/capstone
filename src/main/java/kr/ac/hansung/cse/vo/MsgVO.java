package kr.ac.hansung.cse.vo;

import java.util.Date;

public class MsgVO {

	private int idx;
	private String userSend;
	private String userReceive;
	private String msg;
	private Date date;
	private String status;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	public String getUserSend() {
		return userSend;
	}
	public void setUserSend(String userSend) {
		this.userSend = userSend;
	}
	public String getUserReceive() {
		return userReceive;
	}
	public void setUserReceive(String userReceive) {
		this.userReceive = userReceive;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
