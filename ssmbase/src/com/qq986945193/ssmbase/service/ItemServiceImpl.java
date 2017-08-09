package com.qq986945193.ssmbase.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qq986945193.ssmbase.dao.ItemsMapper;
import com.qq986945193.ssmbase.pojo.Items;
import com.qq986945193.ssmbase.pojo.ItemsExample;

/**
 * service层
 * 
 * @Author ：程序员小冰
 * @新浪微博 ：http://weibo.com/mcxiaobing
 * @GitHub: https://github.com/QQ986945193
 */
@Service(value = "itemService")
public class ItemServiceImpl implements ItemService {

	/**
	 * 由于这里需要dao层的mapper。我们这里使用的注解，
	 */
	// 这里使用spring自己的注解
	@Autowired
	private ItemsMapper itemsMapper;
	/**
	 * 获取列表数据
	 */
	public List<Items> list() throws Exception {
		//如果不需要查询条件。则直接将Example对象new出来即可
		ItemsExample example = new ItemsExample();
		return itemsMapper.selectByExampleWithBLOBs(example);
	}
	
	//根据主键查询
	public Items findItemsById(Integer id) throws Exception {
		return itemsMapper.selectByPrimaryKey(id);
	}
	
	/**
	 * 更新数据
	 */
	public void updateItems(Items item) throws Exception {
		itemsMapper.updateByPrimaryKeyWithBLOBs(item);
	}

}
