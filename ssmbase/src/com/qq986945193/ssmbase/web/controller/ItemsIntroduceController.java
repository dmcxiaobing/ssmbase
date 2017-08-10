package com.qq986945193.ssmbase.web.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.qq986945193.ssmbase.exception.CustomerException;
import com.qq986945193.ssmbase.pojo.Items;
import com.qq986945193.ssmbase.service.ItemService;


/**
 * 一个功能点的详解controller
 * 
 * @Author ：程序员小冰
 * @新浪微博 ：http://weibo.com/mcxiaobing
 * @GitHub: https://github.com/QQ986945193
 */
// 窄化请求映射：为防止同事之间在controller方法起名的时候重名，所以相当于在url中多加了一层目录，防止重复
// 例如：当前list的访问路径为：localhost:/ssmbase/items/list.action
@RequestMapping("/items")
@Controller
public class ItemsIntroduceController {

	@Resource(name = "itemService")
	public ItemService service;

	// @RequestMapping(value = "list",method=RequestMethod.GET)
	@RequestMapping("/list")
	public ModelAndView itemList() throws Exception {
		// 测试运行时异常 这样回报500错误。如果没有开启异常处理器则会爆出代码，否则不会爆出
		// int i = 10/0;
		// 测试一下我们自定义的异常.假如为true会有错误。 我们要将我们的异常配置到springMVC中
		if (false) {
			CustomerException customerException = new CustomerException();
			customerException.setErrorMessage("对不起，你已经登陆过了。不要重复登录。");
			throw customerException;
		}
		List<Items> list = service.list();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("itemList", list);
		modelAndView.setViewName("itemList");
		return modelAndView;
	}

	/**
	 * 导入Jackson的jar包在controller的方法中可以使用@RequestBody,
	 * 让springMVc将json格式的字符串自动转换成java中的pojo 页面json的key要等于java中的pojo的属性名称
	 * controller方法返回pojo类型的对象，并且用ResponseBody注解，让SpringMVc将pojo类型转换为json格式的字符串
	 */
	@RequestMapping("/sendJson")
	@ResponseBody
	public Items json(@RequestBody Items items) throws Exception {
		System.out.println(items);
		return items;
	}

	/*
	 * 通过@PathVariable可以接收url中传入的参数
	 * 
	 * @RequestMapping("/itemEdit/{id}")
	 * 中接收参数使用大括号中加上变量名称, @PathVariable中的变量名称要和RequestMapping 中的变量名称相同
	 * 演示restful.由于这里请求没有action，所以需要更改sprigMVC的配置
	 * http://localhost/ssmbase/items/itemEdit/1
	 */
	@RequestMapping("/itemEdit/{id}")
	public String itemEdit(@PathVariable("id") Integer id, HttpServletRequest request, Model model) throws Exception {
		System.out.println("id" + id);
		Items items = service.findItemsById(id);
		// Model模型:模型中放入了返回给页面的数据
		// model底层其实就是用的request域来传递数据,但是对request域进行了扩展.
		model.addAttribute("item", items);
		// 如果springMvc方法返回一个简单的string字符串,那么springMvc就会认为这个字符串就是页面的名称
		return "editItem";

	}

	/**
	 * 更新包括 上传文件在tomcat上配置图片虚拟目录，在tomcat下conf/server.xml中添加：
	 * <Context docBase="F:\develop\load\temp" path="/pic" reloadable="false"/>
	 * 访问http://localhost:8080/pic即可访问F:\develop\load\temp下的图片。 也可以通过eclipse配置：
	 * 访问http://localhost:8080/pic即可访问F:\develop\load\temp下的图片。
	 */
	@RequestMapping("/updateitem")
	public String uploadFile(MultipartFile pictureFile, Items items, Model model) throws Exception {
		// 获取文件的完整名称
		String fileName = pictureFile.getOriginalFilename();
		// 使用随机生成的字符串和原文件扩展名生成新的文件，防止重名则为：mffj.png例
		String newFileStringName = UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));
		// 将文件保存到硬盘D:\KaiFaGongJu\apache-tomcat-8.5.12\tomcatimg
		pictureFile.transferTo(new File("D:\\KaiFaGongJu\\apache-tomcat-8.5.12\\tomcatimg\\" + newFileStringName));
		// 将图片名称保存到数据库
		items.setPic(newFileStringName);
		service.updateItems(items);
		// 返回数据
		// request.setAttribute("", arg1);
		// 指定返回的页面(如果controller方法返回值为void,则不走springMvc组件,所以要写页面的完整路径名称)
		// request.getRequestDispatcher("/WEB-INF/jsp/success.jsp").forward(request,
		// response);

		// 重定向:浏览器中url发生改变,request域中的数据不可以带到重定向后的方法中
		// model.addAttribute("id", items.getId());
		// 在springMvc中凡是以redirect:字符串开头的都为重定向
		return "redirect:itemEdit/"+items.getId();
		//请求转发:浏览器中url不发生改变,request域中的数据可以带到转发后的方法中
		//model.addAttribute("id", items.getId());
		//spirngMvc中请求转发:返回的字符串以forward:开头的都是请求转发, 
		//后面forward:itemEdit.action表示相对路径,相对路径就是相对于当前目录,当前为类上面指定的items目录.在当前目录下可以使用相对路径随意跳转到某个方法中
		//后面forward:/itemEdit.action路径中以斜杠开头的为绝对路径,绝对路径从项目名后面开始算
		//return "forward:/items/itemEdit.action";
	}
	
	
	@RequestMapping("/updateAll")
//	@RequestMapping("/delAll")
	public String delAll(com.qq986945193.ssmbase.vo.QueryVo vo) throws Exception{
		//如果批量删除,一堆input复选框,那么可以提交数组.(只有input复选框被选中的时候才能提交)
		System.out.println(vo);
		return "";
	}
}
