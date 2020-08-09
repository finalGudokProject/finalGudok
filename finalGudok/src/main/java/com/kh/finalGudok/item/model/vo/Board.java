package com.kh.finalGudok.item.model.vo;

import java.io.Serializable;

public class Board implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7900262064449155275L;
	
	private int boardNo;
	private String title;
	private String content;
	private String writeDate;
	private int readNum;
	private String boardCode;
	private int itemNo;
	private int memberNo;
	private int memberId;
	private String email;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public Board(int boardNo, String title, String content, String writeDate, int readNum, String boardCode, int itemNo,
			int memberNo, int memberId, String email) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.readNum = readNum;
		this.boardCode = boardCode;
		this.itemNo = itemNo;
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.email = email;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	public int getReadNum() {
		return readNum;
	}

	public void setReadNum(int readNum) {
		this.readNum = readNum;
	}

	public String getBoardCode() {
		return boardCode;
	}

	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}

	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", title=" + title + ", content=" + content + ", writeDate=" + writeDate
				+ ", readNum=" + readNum + ", boardCode=" + boardCode + ", itemNo=" + itemNo + ", memberNo=" + memberNo
				+ ", memberId=" + memberId + ", email=" + email + "]";
	}

	
	
	
}
