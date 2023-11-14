package com.multi.mvc03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {

	@Autowired
	BookDAO dao;
	// 요청 하나당 함수 하나.
	
	@RequestMapping("insert")
	public String insert(BookDTO dto) {
		int result = dao.insert(dto);
		if(result==1) {
			return "insert";
		} else {
			return "redirect:book.jsp";
		}
	}
	
	@RequestMapping("update")
	public String update(BookDTO dto) {
		int result = dao.update(dto);
		if(result==1) {
			return "update";
		} else {
			return "redirect:book.jsp";
		}
	}
	
	@RequestMapping("one")
	public void one(String id, Model model) {
		BookDTO dto = dao.one(id);
		//model 객체 필요
		model.addAttribute("dto", dto);
	}
	
	@RequestMapping("all")
	public void list(Model model) {
		List<BookDTO> list = dao.list();
		model.addAttribute("list", list);
	}
}
