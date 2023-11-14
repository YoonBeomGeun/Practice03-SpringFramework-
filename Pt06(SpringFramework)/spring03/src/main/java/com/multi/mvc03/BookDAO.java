package com.multi.mvc03;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(BookDTO dto) {
		int result = my.insert("book.create", dto);
		return result;
	}
	
	public int update(BookDTO dto) {
		int result = my.update("book.update", dto);
		return result;
	}
	
	public BookDTO one(String id) {
		return my.selectOne("book.one", id);
	}
	
	public List<BookDTO> list() {
		return my.selectList("book.list");
	}

}
