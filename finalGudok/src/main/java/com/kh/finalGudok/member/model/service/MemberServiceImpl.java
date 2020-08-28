package com.kh.finalGudok.member.model.service;


import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalGudok.item.model.vo.Item;
import com.kh.finalGudok.item.model.vo.PageInfo;
import com.kh.finalGudok.member.model.dao.MemberDao;
import com.kh.finalGudok.member.model.vo.AdminExchange;
import com.kh.finalGudok.member.model.vo.AdminMember;
import com.kh.finalGudok.member.model.vo.AdminPayment;
import com.kh.finalGudok.member.model.vo.AdminSecession;
import com.kh.finalGudok.member.model.vo.AdminSubscribe;
import com.kh.finalGudok.member.model.vo.Cart;
import com.kh.finalGudok.member.model.vo.DeleteHeart;
import com.kh.finalGudok.member.model.vo.Delivery;
import com.kh.finalGudok.member.model.vo.Exchange;
import com.kh.finalGudok.member.model.vo.Grade;
import com.kh.finalGudok.member.model.vo.Heart;
import com.kh.finalGudok.member.model.vo.Inquiry;
import com.kh.finalGudok.member.model.vo.Member;
import com.kh.finalGudok.member.model.vo.Point;
import com.kh.finalGudok.member.model.vo.Reply;
import com.kh.finalGudok.member.model.vo.Review;
import com.kh.finalGudok.member.model.vo.Search;
import com.kh.finalGudok.member.model.vo.Withdrawal;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao mDao;

	@Override
	public Member loginMember(Member m) {
		return mDao.loginMember(m);
	}

	// 마이페이지
	@Override
	public Member confirmMember(Member m) {
		return mDao.confirmMember(m);
	}

	@Override
	public ArrayList<Point> selectPointList(Integer memberNo) {
		return mDao.selectPointList(memberNo);
	}

	@Override
	public ArrayList<Review> selectReviewList(Integer memberNo) {
		return mDao.selectReviewList(memberNo);
	}

	@Override
	public ArrayList<Exchange> selectExchangeList(Integer memberNo) {
		return mDao.selectExchangeList(memberNo);
	}
//
//	@Override
//	public ArrayList<Delivery> selectDeliveryList(Integer memberNo) {
//		return mDao.selectDeliveryList(memberNo);
//	}
//
//	@Override
//	public ArrayList<Cart> selectCartList(Integer memberNo) {
//		return mDao.selectCartList(memberNo);
//	}
//
//	@Override
//	public int insertExchange(Exchange e) {
//		return mDao.insertExchange(e);
//	}

	@Override
	public int checkIdDup(String memberId) {
		return mDao.checkIdDup(memberId);
	}

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(m);
	}

	@Override
	public int emailDupCheck(String email) {
		
		return mDao.emailDupCheck(email);
	}

	@Override
	public ArrayList<Delivery> selectDeliveryList(Integer memberNo) {
		return mDao.selectDeliveryList(memberNo);
	}

	@Override
	public ArrayList<Cart> selectCartList(Integer memberNo) {
		return mDao.selectCartList(memberNo);
	}

	@Override
	public int insertExchange(Exchange e) {
		return mDao.insertExchange(e);
	}

	@Override
	public int updateSubscribe(int subscribeNo) {
		return mDao.updateSubscribe(subscribeNo);
	}

	@Override
	public Review selectReview(Integer reviewNo) {
		return mDao.selectReview(reviewNo);
	}

	@Override
	public int deleteReview(Integer reviewNo) {
		return mDao.deleteReview(reviewNo);
	}

	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(m);
	}

	@Override
	public int updateMemberStatus(int memberNo) {
		return mDao.updateMemberStatus(memberNo);
	}

	@Override
	public int insertSecession(Withdrawal w) {
		return mDao.insertSecession(w);
	}

	@Override
	public ArrayList<Inquiry> selectInquiryList(Integer memberNo) {
		return mDao.selectInquiryList(memberNo);
	}

	@Override
	public ArrayList<Heart> selectHeartList(Integer memberNo) {
		return mDao.selectHeartList(memberNo);
	}

	@Override
	public int deleteHeart(DeleteHeart dh) {
		return mDao.deleteHeart(dh);
	}

	@Override
	public Item selectItem(int itemNo) {
		return mDao.selectItem(itemNo);
	}

	@Override
	public int addCart(HashMap map) {
		return mDao.addCart(map);
	}

	@Override
	public Reply selectReply(Integer boardNo) {
		return mDao.selectReply(boardNo);
	}

	@Override
	public int deleteCart(HashMap map) {
		return mDao.deleteCart(map);
	}

	@Override
	public int updatePassword(Member m) {
		return mDao.updatePassword(m);
	}

	@Override
	public ArrayList<Grade> selectGradeList() {
		return mDao.selectGradeList();
	}

	@Override
	public int getMemberCnt() {
		return mDao.selectMemberCnt();
	}

	
	@Override
	public ArrayList<AdminMember> selectMemberN(PageInfo pi) {
		return mDao.selectMemberN(pi);
	}


	@Override
	public Integer selectGradeCnt(int i) {
		return mDao.selectGradeCnt(i);
	}

	@Override
	public int updateGradeRate(ArrayList<Grade> g) {
		return mDao.updateGradeRate(g);
	}

	@Override
	public int updateGradeMin(ArrayList<Grade> g) {
		return mDao.updateGradeMin(g);
	}

	@Override
	public AdminMember selectOneMember(int memberNo) {
		return mDao.selectOneMember(memberNo);
	}

	@Override
	public ArrayList<AdminPayment> selectMemberPay(int memberNo, PageInfo pi) {
		return mDao.selectMemberPay(memberNo,pi);
	}

	@Override
	public int getMemberPayCnt(int memberNo) {
		return mDao.selectMemberPayCnt(memberNo);
	}

	@Override
	public Integer selectTotalPay(int i) {
		return mDao.selectTotalPay(i);
	}

	@Override
	public int updateMemberA(AdminMember m) {
		return mDao.updateMemberA(m);
	}

	@Override
	public int deleteMemberA(Integer memberNo) {
		return mDao.deleteMemberA(memberNo);
	}

	@Override
	public int deleteMemberSecession(Integer memberNo) {
		return mDao.deleteMemberSecession(memberNo);
	}

	@Override
	public int deleteMemberBoard(Integer memberNo) {
		return mDao.deleteMemberBoard(memberNo);
	}

	@Override
	public int deleteMemberHeart(Integer memberNo) {
		return mDao.deleteMemberHeart(memberNo);
	}

	@Override
	public int deleteMemberCart(Integer memberNo) {
		return mDao.deleteMemberCart(memberNo);
	}
	
	@Override
	public int deleteMemberReview(Integer memberNo) {
		return mDao.deleteMemberReview(memberNo);
	}

	@Override
	public int deleteMemberPayment(Integer memberNo) {
		return mDao.deleteMemberPayment(memberNo);
	}

	@Override
	public int deleteMemberSubscribe(Integer memberNo) {
		return mDao.deleteMemberSubscribe(memberNo);
	}

	@Override
	public Integer selectSecessionCnt(AdminSecession s){
		return mDao.selectSecessionCnt(s);
	}

	@Override
	public Integer selectMemberSecessionCnt(AdminSecession s) {
		return mDao.selectMemberSecessionCnt(s);
	}

	@Override
	public ArrayList<AdminSecession> selectMemberSecession(PageInfo pi) {
		return mDao.selectMemberSecession(pi);
	}

	@Override
	public ArrayList<AdminSubscribe> selectOrderList(PageInfo pi) {
		return mDao.selectOrderList(pi);
	}

	@Override
	public int getOrderCnt() {
		return mDao.selectOrderCnt();
	}

	@Override
	public int updateDelivery(ArrayList<AdminSubscribe> dArr) {
		return mDao.updateDelivery(dArr);
	}

	@Override
	public AdminSubscribe selectOrder(int subscribeNo) {
		return mDao.selectOrder(subscribeNo);
	}

	@Override
	public AdminPayment selectPayment(int subscribeNo) {
		return mDao.selectPayment(subscribeNo);
	}

	@Override
	public int selectTotalPayment(int subscribeNo) {
		return mDao.selectTotalPayment(subscribeNo);
	}

	@Override
	public int selectItemTotalP(int subscribeNo) {
		return mDao.selectItemTotalP(subscribeNo);
	}

	@Override
	public int updateSubscribeA(Integer subscribeNo) {
		return mDao.updateSubscribeA(subscribeNo);
	}

	@Override
	public Integer selectExchangeChart(Search s) {
		return mDao.selectExchangChart(s);
	}

	@Override
	public ArrayList<AdminExchange> selectExchange(PageInfo pi) {
		return mDao.selectExchangeList(pi);
	}

	@Override
	public int updateExchange(ArrayList<AdminExchange> dArr) {
		return mDao.updateExchange(dArr);
	}

	@Override
	public ArrayList<String> selectDateList(Search s) {
		return mDao.selectDateList(s);
	}

	@Override
	public ArrayList<AdminPayment> selectPaymentList(ArrayList<String> pArr, PageInfo pi) {
		return mDao.selectPaymentList(pArr,pi);
	}

	

	
}
