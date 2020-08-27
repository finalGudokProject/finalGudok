package com.kh.finalGudok.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class AdminPayment implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6451044665432823259L;

	
	private int paymentNo;
	private int itemNo;
	private String itemName;
	private int itemPrice;
	private int amount;
	private int point;
	private int subscribeNo;
	private Date paymentDate;
	private int memberNo;
	private String memberId;
	private String email;
	private int totalPayment;
	
	public AdminPayment() {}

	public AdminPayment(int paymentNo, int itemNo, String itemName, int itemPrice, int amount, int point,
			int subscribeNo, Date paymentDate, int memberNo, String memberId, String email, int totalPayment) {
		super();
		this.paymentNo = paymentNo;
		this.itemNo = itemNo;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.amount = amount;
		this.point = point;
		this.subscribeNo = subscribeNo;
		this.paymentDate = paymentDate;
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.email = email;
		this.totalPayment = totalPayment;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}

	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getSubscribeNo() {
		return subscribeNo;
	}

	public void setSubscribeNo(int subscribeNo) {
		this.subscribeNo = subscribeNo;
	}

	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "AdminPayment [paymentNo=" + paymentNo + ", itemNo=" + itemNo + ", itemName=" + itemName + ", itemPrice="
				+ itemPrice + ", amount=" + amount + ", point=" + point + ", subscribeNo=" + subscribeNo
				+ ", paymentDate=" + paymentDate + ", memberNo=" + memberNo + ", memberId=" + memberId + ", email="
				+ email + ", totalPayment=" + totalPayment + "]";
	}

	
}
	