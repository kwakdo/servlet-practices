package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

public class GuestDaoTest {

	public static void main(String[] args) {
		// testInsert();
		testFindAll();
	}

	private static void testInsert() {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("Hard");
		vo.setPassword("1234");
		vo.setMessage("to complete");
		//vo.setRegDate("2022-05-23");
		
		new GuestbookDao().insert(vo);
	}

	private static void testFindAll() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}
	
	

}