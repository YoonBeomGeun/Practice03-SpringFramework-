package com.multi.mvc05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("test")
	public void test() {
		System.out.println("test 요청 들어옴");
	}
	
	@RequestMapping("test2")
	public void test2() {
		System.out.println("test2 요청 들어옴");
	}
	
	@RequestMapping("fruit")
	public void fruit() {
		System.out.println("과일 목록 요청 들어옴.");
	}
	
	@RequestMapping("travel")
	public void travel() {
		System.out.println("여행 목록 요청 들어옴.");
	}

}
