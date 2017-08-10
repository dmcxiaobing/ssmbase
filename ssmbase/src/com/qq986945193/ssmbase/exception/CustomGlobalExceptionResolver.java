package com.qq986945193.ssmbase.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
/**
 * 自定义全局异常处理
 * @Author ：程序员小冰
 * @新浪微博 ：http://weibo.com/mcxiaobing
 * @GitHub: https://github.com/QQ986945193
 */
public class CustomGlobalExceptionResolver implements HandlerExceptionResolver{

	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object arg2,
			Exception exception) {
		String msg = "";//保存异常信息
		//判断异常类型
		if (exception instanceof CustomerException) {
			//处理业务级别异常
			msg = ((CustomerException) exception).getErrorMessage();
		}else {
			//处理运行时异常
			msg = "系统异常，请稍后重试。。";
		}
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("msg",msg);
		modelAndView.setViewName("error");
		return modelAndView;
	}

}
