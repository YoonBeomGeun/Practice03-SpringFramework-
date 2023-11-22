package com.multi.mvc05;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {

	@RequestMapping("string")
	@ResponseBody //controller에서 data를 리턴할 때. => views를 만들 필요없음.
	public String name() {
		return "winner";
	}
	
	@RequestMapping("json1")
	@ResponseBody // dto --> json(dto 하나당 json 하나)
	public BbsDTO json1() {
		BbsDTO dto = new BbsDTO();
		dto.setId(1);
		dto.setTitle("win");
		dto.setContent("winwin");
		dto.setWriter("apple");
		return dto;
	}
	
	@RequestMapping("json2")
	@ResponseBody
	public ArrayList<BbsDTO> json2() {
		ArrayList<BbsDTO> list = new ArrayList<BbsDTO>();
		for(int i=0;i<5;i++) {
			BbsDTO dto = new BbsDTO();
			dto.setId(i);
			dto.setTitle("win" + i);
			dto.setContent("winwin" + i);
			dto.setWriter("apple" + i);
			
			list.add(dto);
		}
		return list;
	}
	
	@RequestMapping("json3")
	@ResponseBody
	public void json3() {
		
	}
	
	@RequestMapping("map1")
	@ResponseBody
	public MapVO kakaoMap() {
		MapVO map = new MapVO();
		map.setLat(37.3983565);
		map.setLon(126.7312761);
		return map;
	}
	
	
}
