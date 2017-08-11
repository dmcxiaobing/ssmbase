package com.qq986945193.ssmbase.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用户的controller
 * @Author ：程序员小冰
 * @新浪微博 ：http://weibo.com/mcxiaobing
 * @GitHub: https://github.com/QQ986945193
 */
@RequestMapping("/user")
@Controller
public class UserController {

	@RequestMapping("/login")
	public String login(String username,String password,HttpServletRequest request){
		HttpSession session = request.getSession();
		//判断用户名和密码是否正确，如果正确存放到session中。这里直接简单判断一下
		if (username!=null && !username.trim().isEmpty()) {
			session.setAttribute("username", username);
			//跳转到列表页
			return "itemList";
		}
		return "login";
	}
}
