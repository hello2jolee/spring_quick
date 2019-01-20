package com.springbook.biz.common;

// 모든 비즈니스 메소드가 실행되기 직전에 공통으로 처리할 로직 
public class LogAdvice {
	public void printLog() {
		System.out.println("공통 로그] 비즈니스 로직 수행 전 동작.");
	}
}
