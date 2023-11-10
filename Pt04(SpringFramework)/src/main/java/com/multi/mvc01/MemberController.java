package com.multi.mvc01;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	//버튼을 눌러서 요청 --> 버튼마다 함수 하나
	//회원가입
	//MemberDAO 클래스로 만들어진 객체가 램의 주소를 찾아서 아래 변수에 주소를 넣어줌.
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("insert")
	public void insert(MemberDTO bag) {
		//함수(bag) => 요청할 때 만든다.(프로토타입)
		//함수에 bag 넣기 => 클라이언트로부터 전달된 값을 가방을 만들어서 넣기
		System.out.println(bag);
		
	    int result = dao.insert(bag); //int(1/0)
	    String resultText = "";
	    if(result == 1){
	    	resultText = "회원가입에 성공했습니다.";
	    }else{
	    	resultText = "회원가입에 실패했습니다.";
	    }
	    System.out.println(resultText);
	}
	
	//로그인
	@RequestMapping("login")
	public void login(MemberDTO bag, HttpSession session) throws Exception {
		//MemberDAO dao = new MemberDAO();
    	boolean result = dao.login(bag); //boolean(true/false)
    	if(result){ //if(조건) {조건이 true이면 이 괄호를 실행해라!}
    		//세션을 설정해주자.!!!
    		session.setAttribute("id", bag.getId());
    	}
	}

}
