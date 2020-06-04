package com.increpas.cls.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.increpas.cls.vo.MemberVO;
@Repository
public class MemberDAO {
	@Autowired  //자동 의존주입 
	SqlSessionTemplate sqlSession;
	
	public MemberDAO() {
		// TODO Auto-generated constructor stub
	}
	public void test() {
		System.out.println("############ 이예 ###############");
	}
	public int idCheck(String id) {
		return sqlSession.selectOne("mSQL.idCount",id); 
	}
	// 로그인 질의명령 전담 처리함수 
	public int login(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.Login", mVO);
	}
	public List getList() {
		return sqlSession.selectList("mSQL.nameList");
	}
	public MemberVO getDetail(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.getDetail",mVO);
	}
}
