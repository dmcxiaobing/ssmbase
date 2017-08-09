package com.qq986945193.ssmbase.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.swing.plaf.basic.BasicInternalFrameTitlePane.MoveAction;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qq986945193.ssmbase.pojo.Items;
import com.qq986945193.ssmbase.service.ItemService;
import com.qq986945193.ssmbase.vo.QueryVo;

/**
 * 一个controller。。。这里进行简单演示接受请求参数的方法。
 * @Author ：程序员小冰
 * @新浪微博 ：http://weibo.com/mcxiaobing
 * @GitHub: https://github.com/QQ986945193
 */
//@RequestMapping()也可以多配置一层路径
@Controller
public class ItemsController {
	//controller依赖service层，所以使用注解的方式取得对象
	@Resource(name="itemService")
	private ItemService itemService;
	
	
	/**
	 * 查看列表。这里使用modelAndView(不常用)
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")//http://localhost/ssmbase/list.action
	public ModelAndView itemList() throws Exception{
		//通过service层得到数据
		List<Items> items = itemService.list();
		//创建modelAndView
		ModelAndView modelAndView = new ModelAndView();
		//设置数据到
		modelAndView.addObject("itemList",items);
		//设置转发的页面。由于配置过了视图解析器，所以直接写文件名即可。
		modelAndView.setViewName("itemList");
		return modelAndView;
	}
	
	/**
	 * 编辑。这里使用servlet的api(不常用)..
	 * SpringMvc中默认支持的参数类型：
	 *HttpServletRequest
	 *HttpServletResponse
	 *HttpSession
	 *Model
	 * 也就是说在controller方法中可以加入这些也可以不加。
	 */
	@RequestMapping("itemEdit")
	public String itemEdit(HttpServletRequest request,Model model) throws NumberFormatException, Exception{
		String id = request.getParameter("id");//接口请求带有的参数id
		Items item = itemService.findItemsById(Integer.parseInt(id));//根据id查询数据
		//Model模型：模型中放入了返回给页面的数据
		//model底层其实就是用request域来传递数据的，但是对request域进行了扩展
		model.addAttribute("item", item);
		//如果springMvc方法返回一个简单的string字符串，那么springMv就会认为这个字符串就是页面的名称
		return "editItem";
	}
	
	/**
	 * springMvc可以直接接受基本数据类型，包括String
	 * controller方法接受的参数的变量名称必须要等于页面上input框的name属性值。
	 * public String update(Integer id, String name, Float price, String detail) throws Exception{
	 */
	
	//这个最常用，直接使用SpringMvc接受pojo类型。要求页面上input框的name属性名称biubiu等pojo的属性名称
	@RequestMapping("/updateitem")
	public String update(Items item) throws Exception{
//		System.out.println(item);
		itemService.updateItems(item);
		return "success";
	}
	
	/**
	 * 如果controller中接收的是Vo,那么页面上input的name属性值要等于vo.属性.属性
	 */
	@RequestMapping("/search")
	public String search(QueryVo vo)throws Exception{
		System.out.println(vo.getItems().toString());
		return "";
	}
	
	
}
