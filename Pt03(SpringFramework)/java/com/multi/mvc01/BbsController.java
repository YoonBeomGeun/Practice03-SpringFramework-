package com.multi.mvc01;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //싱글톤 + 컨트롤러
public class BbsController {

	@RequestMapping("insert2")
	public void insert2(BbsDTO2 bag, Model model) {
		System.out.println(bag);
		BbsDAO dao = new BbsDAO();
    	int result = dao.insert(bag); //1
		System.out.println(result);
		//result는 views/아래까지 가지고 가야하는 속성값이라고 설정
		//views까지 데이터를 넘길 수 있는 객체 필요(Model)
		//함수(Model model) 써놓으면 스프링이 model객체를 만들어서 넣어줌
		model.addAttribute("result", result);
		
	}
	
	@RequestMapping("update2")
	//리턴이 없으면 update2/ok.jsp로 가지만 있으면 리턴에 해당하는 곳으로 go!
	public String update2(BbsDTO2 bag) {
		//System.out.println(bag);
		BbsDAO dao = new BbsDAO();
		int result = dao.update(bag);
		if(result==1) {
			return "redirect:bbs.jsp?result=" + result; //서버가 브라우저에게 명령
		} else {
			return "no"; //view/no.jsp
		}
	}
	
	@RequestMapping("delete2")
	public void delete2(BbsDTO2 bag, Model model) {
		System.out.println(bag);
		BbsDAO dao = new BbsDAO();
		int result = dao.delete(bag);
		model.addAttribute("result", result);
	}
}
