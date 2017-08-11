package com.qq986945193.ssmbase.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * interceptor拦截器的简单介绍 
 */
public class IntroduceInterceptor implements HandlerInterceptor{
	/**
	 * 执行时机：Controller已经执行，ModelAndView已经返回。
	 * 使用场景：记录操作日志，记录登陆用户的ip，时间等。
	 */
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.err.println("afterCompletion");
	}
	/**
	 * 执行时机：Controller方法已经执行，ModelAndView没有返回
	 * 使用场景：可以在此方法中设置全局的数据处理业务
	 */
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		System.err.println("postHandle");
	}
	/**
	 * 返回boolean值，如果返回true，则放行，返回false则被拦截住。
	 * 执行时机：controller方法没有被执行，ModelAndView没有被返回。
	 * 使用场景：权限验证
	 */
	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		System.err.println("prehandle");
		return true;
	}

}
