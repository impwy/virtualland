package com.land.myapp.model.basket;

public class BasketVO {// 장바구니

	private String member_id;
	private int goods_num;
	private String basket_sum;
	private int basket_amount;

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getGoods_num() {
		return goods_num;
	}

	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}

	public String getBasket_sum() {
		return basket_sum;
	}

	public void setBasket_sum(String basket_sum) {
		this.basket_sum = basket_sum;
	}

	public int getBasket_amount() {
		return basket_amount;
	}

	public void setBasket_amount(int basket_amount) {
		this.basket_amount = basket_amount;
	}
}
