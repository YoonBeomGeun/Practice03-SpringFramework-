package com.multi.mvc05;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {

	@RequestMapping("movie")
	// VO 사용
	/*public void movie(MovieVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("vo", vo);		
	}*/
	
	// VO 사용 안함
	public void movie(String title, int price, Model model) {
		model.addAttribute("title", title); //VO와 달리 값을 하나씩 모두 넘겨줘야함
		model.addAttribute("price", price);
	}
	
}
