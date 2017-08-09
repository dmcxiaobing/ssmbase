package com.qq986945193.ssmbase.service;

import java.util.List;

import com.qq986945193.ssmbase.pojo.Items;


/**
 * @Author ：程序员小冰
 * @新浪微博 ：http://weibo.com/mcxiaobing
 * @GitHub: https://github.com/QQ986945193
 */
public interface ItemService {

	public List<Items> list() throws Exception;
	
	public Items findItemsById(Integer id) throws Exception;
	
	public void updateItems(Items item) throws Exception;
}
