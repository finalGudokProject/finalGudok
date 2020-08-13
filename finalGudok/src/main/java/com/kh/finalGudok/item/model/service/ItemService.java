package com.kh.finalGudok.item.model.service;

import java.util.ArrayList;

import com.kh.finalGudok.item.model.vo.AdminItem;
import com.kh.finalGudok.item.model.vo.Event;

import com.kh.finalGudok.item.model.vo.Board;
import com.kh.finalGudok.item.model.vo.Cart;
import com.kh.finalGudok.item.model.vo.Heart;

import com.kh.finalGudok.item.model.vo.Item;
import com.kh.finalGudok.item.model.vo.ItemListView;
import com.kh.finalGudok.item.model.vo.PageInfo;
import com.kh.finalGudok.item.model.vo.Review;
import com.kh.finalGudok.member.model.vo.Member;

public interface ItemService {

	int getItemCount();

	ArrayList<Item> selectList(PageInfo pi);

	int detailCount(int itemNo);

	ItemListView selectItem(int itemNo);

	ArrayList<Review> selectReview(int itemNo);


	int insertItem(AdminItem i);

	int insertImage(AdminItem i);

	int insertEvent(Event e);

	int insertEventImg(Event e);

	int getEventCount();

	ArrayList<Event> selectEventListA(PageInfo pi);

	ArrayList selectEventListCount(PageInfo pi);

	int deleteEvent(int dEventArr);

	int deleteEventItem(int i);

	int deleteEventImg(int i);

	int deleteEventBannerImg(int i);

	Event selectDeleteEvent(int i);

	int updateEventStatusY(int i);

	int updateEventStatusN(int i);


	ArrayList<Review> selectAllReview(int itemNo);


	int insertChoice(Heart h);

	int deleteChoice(Heart h);

	int getItemLivingCount();

	ArrayList<Item> selectLivingList(PageInfo pi);

	int getItemEventCount();

	ArrayList<Item> selectEventList(PageInfo pi);

	int insertInquired(Board b);

	int insertReview(Review r);

	int getNewCount();

	ArrayList<Item> selectNewList(PageInfo pi);

	int insertCart(Cart c);

	Heart detailHeart(int itemNo);

	ArrayList<Cart> selectBasket(int memberNo);

	int updatePChoice(int itemNo);

	int updateMChoice(int itemNo);

	public void deleteCart(Cart c);

	int updateReviewRate(int itemNo);

	int dListCount();
	
	ArrayList<ItemListView> selectDList(PageInfo pi);
	
	int mListCount();

	ArrayList<ItemListView> selectMList(PageInfo pi);

	int bListCount();
	
	ArrayList<ItemListView> selectBList(PageInfo pi);
	
	int sListCount();

	ArrayList<ItemListView> selectSList(PageInfo pi);
	
	int hListCount();

	ArrayList<ItemListView> selectHList(PageInfo pi);
	
	int diListCount();

	ArrayList<ItemListView> selectDiList(PageInfo pi);

}
