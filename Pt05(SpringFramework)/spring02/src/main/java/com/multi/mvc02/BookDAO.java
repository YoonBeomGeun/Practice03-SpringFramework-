package com.multi.mvc02;

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
	
	public BookDTO one(BookDTO dto) throws Exception {
		BookDTO dto2 = my.selectOne("book.one", dto);
		return dto2;
	}

}
