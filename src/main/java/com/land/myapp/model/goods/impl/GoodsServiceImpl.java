package com.land.myapp.model.goods.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.goods.GoodsService;
import com.land.myapp.model.goods.GoodsVO;


@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	private GoodsDAO goodsDAO;

	//관리자 아이디로 상품 등록
	public void insertGoods(GoodsVO vo) {
		
		System.out.println("Impl통과");
		goodsDAO.insertGoods(vo);
	}
}
