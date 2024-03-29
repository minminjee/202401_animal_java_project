package com.ani.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ani.vo.LikeVO;

@Repository
public class LikeDaoImplement implements IF_likeDao{
	private static String mapperQuery = "com.ani.dao.IF_likeDao";
	
	@Inject
	SqlSession sqlSession;
	
	//관심등록 insert
	@Override
	public void insert(LikeVO lvo) {
		
		sqlSession.insert(mapperQuery+".insert", lvo);
	}

	//관심등록 된 동물 리스트 selectAll
	@Override
	public List<LikeVO> selectList(String mid) {
		return sqlSession.selectList(mapperQuery+".selectAll", mid);
	}

	@Override
	public int selectCont(HashMap<String, String> params) {
		System.out.println("dao단 출발"+params.get("animal_num"));
		int a =  sqlSession.selectOne(mapperQuery+".selectCnt", params);
		System.out.println("dao 도착 : "+a);
		return a;
	}

}
