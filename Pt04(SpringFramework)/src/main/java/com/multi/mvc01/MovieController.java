package com.multi.mvc01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@RequestMapping("movie")
	public String movie(String movie) {
		if(movie.equals("드라마")) {
			return "drama";
		}else if(movie.equals("액션")) {
			return "action";
		} else if(movie.equals("코믹")) {
			return "comic";
		} else {
			return "no";
		}
	}
}
