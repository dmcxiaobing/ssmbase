package com.qq986945193.ssmbase.exception;
/**
 * 自定义异常类，用来处理异常信息
 * @Author ：程序员小冰
 * @新浪微博 ：http://weibo.com/mcxiaobing
 * @GitHub: https://github.com/QQ986945193
 */
public class CustomerException extends Exception{
	//异常错误信息
	private String errorMessage;

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public CustomerException(String errorMessage) {
		super();
		this.errorMessage = errorMessage;
	}

	public CustomerException() {
		super();
	}
	
	
}
