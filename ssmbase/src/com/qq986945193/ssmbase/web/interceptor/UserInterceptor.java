package com.qq986945193.ssmbase.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 一个用户判断的拦截器。
 * @author David
 */
public class UserInterceptor implements HandlerInterceptor{

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
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		/**
		 * 这里可以进行判断，看用户是否登录。如果没有登陆，则转发到login的页面。否则放行
		 */
		//判断当前访问路径是否为登陆的路径，如果是则放行。不然拦截登陆，则永远登陆不了
		if (request.getRequestURI().indexOf("/login")>0) {
			return true;
		}
		//如果不是登陆的方法，则判断session域中是否有登陆的信息，如果没有则跳转到登陆界面，否则放行
		if (request.getSession().getAttribute("username")!=null) {
			return true;
		}
		request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
		return false;
	}
}
