package com.multi.mvc05;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller //싱글톤 + 컨트롤러
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	
	@Autowired
	ReplyDAO dao2;

	@RequestMapping("insert2")
	public void insert2(BbsDTO bag, Model model) {
		System.out.println(bag);
		//BbsDAO dao = new BbsDAO();
    	int result = dao.insert(bag); //1
		System.out.println(result);
		//result는 views/아래까지 가지고 가야하는 속성값이라고 설정
		//views까지 데이터를 넘길 수 있는 객체 필요(Model)
		//함수(Model model) 써놓으면 스프링이 model객체를 만들어서 넣어줌
		model.addAttribute("result", result);
		
	}
	
	@RequestMapping("update2")
	//리턴이 없으면 update2/ok.jsp로 가지만 있으면 리턴에 해당하는 곳으로 go!
	public String update2(BbsDTO bag) {
		//System.out.println(bag);
		//BbsDAO dao = new BbsDAO();
		int result = dao.update(bag);
		if(result==1) {
			return "redirect:bbs.jsp?result=" + result; //서버가 브라우저에게 명령
		} else {
			return "no"; //view/no.jsp
		}
	}
	
	@RequestMapping("delete2")
	public void delete2(BbsDTO bag, Model model) {
		System.out.println(bag);
		//BbsDAO dao = new BbsDAO();
		int result = dao.delete(bag);
		model.addAttribute("result", result);
	}
	
	@RequestMapping("one")
	public void one(BbsDTO dto, Model model) throws Exception {
		//one 요청했을 때 views에 넣고싶은 처리 내용을 모두 써줘야함
		//bbs 상세페이지 + reply 댓글리스트
		BbsDTO bag = dao.one(dto);
		List<ReplyDTO> list = dao2.list(dto.getId());
		//검색결과는 bag에 들어있음. => views/one.jsp에 결과를 출력
		//bag을 one.jsp까지 전달하기 => Model
		model.addAttribute("bag", bag); // BbsDTO2 => Object
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list")
	public void list(Model model) throws Exception {
		//BbsDAO dao = new BbsDAO();
		List<BbsDTO> list = dao.list();
		//System.out.println(list.size());
		model.addAttribute("list", list);
	}
	
}
