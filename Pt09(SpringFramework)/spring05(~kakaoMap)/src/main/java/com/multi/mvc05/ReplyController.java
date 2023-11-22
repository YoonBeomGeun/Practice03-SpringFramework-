package com.multi.mvc05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {

	@Autowired
	ReplyDAO replyDAO;
	
	@RequestMapping("insert4")
	public void iesert(ReplyDTO replyDTO, Model model) {
		System.out.println(replyDTO);
		int result = replyDAO.insert(replyDTO);
		System.out.println("reply insert 결과 >>" + result);
		//스프링은 클래스이름 앞글자를 소문자 변수로 만들어 놓으면 자동으로
		//views까지 모델 속성으로 지정하여 전달해 준다.
		//model.addAttribute("replyDTO", replyDTO); - 자동
		model.addAttribute("result", result);
	}
}
