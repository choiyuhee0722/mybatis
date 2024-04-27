package com.mybatis.model.dao;

import org.apache.ibatis.session.SqlSession;

public class StudentDao {

	public int insertStudent(SqlSession session) {
		//mybatis를 이용해서 sql문을 실행할 때는 
		//SqlSession이 제공하는 메소드를 이용
		//insert(), update(), delete(), selectOne(), selectList()
		//인수값은 mapper정보,sql정보를 string으로 연결 -> mapper.xml에서 설정
		//외부에서 전달된 데이터가 있으면 필요한 값을 전달
		
		//첫번째 매개변수에 인수로 : mapper태그의 namespace명.sql태그의 id명
		int result = session.insert("student.insertStudent");
		return result;
	
	}
	
	public int insertStudentByName(SqlSession session, String name) {
		return session.insert("student.insertStudentByName",name);
	}
}
