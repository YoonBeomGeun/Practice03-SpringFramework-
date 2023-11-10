package com.multi.mvc01;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@Autowired
	ProductDAO dao;
	//삽입
	@RequestMapping("insert3") // 싱글톤
	public String insert3(ProductDTO bag, Model model) {
		//1. 받아서 dto에 널기
		//2. dao 이용해서 db처리
		ProductDAO dao = new ProductDAO();
		int result = dao.insert(bag);
		//3. 결과를 jsp로 만들어서 실행 후, html코드를 브라우저에 보냄
		model.addAttribute("result",result); // views까지만 감
		if(result==1) {
			return "insert3";
		} else {
			return "redirect:product.jsp"; //redirect는 클라이언트에게 요청하도록 지시
		}
	}
	
	@RequestMapping("update3")
	public String update(ProductDTO bag, Model model) {
		ProductDAO dao = new ProductDAO();
		int result = dao.update(bag);
		model.addAttribute("result", result);
		if(result == 1) {
			return "update3";
		} else {
			return "redirect:update3.jsp";
		}
	}
	
	@RequestMapping("one2")
	public void one2(ProductDTO dto, Model model) throws Exception {
		ProductDAO dao = new ProductDAO();
		ProductDTO bag = dao.one(dto);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list2")
	public void list2(Model model) throws Exception {
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> list = dao.list();
		//System.out.println(list.size());
		model.addAttribute("list", list);
	}
}
