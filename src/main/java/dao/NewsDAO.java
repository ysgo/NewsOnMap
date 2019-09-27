package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.NewsVO;

@Repository
public class NewsDAO {
	@Autowired
	SqlSession session = null;
	String mapperRoute = "resource.NewsMapper.";
	
	// 뉴스 타이틀 전체출력
	public List<NewsVO> listAll() {
		String statement = mapperRoute+"allTitle";
		return session.selectList(statement);
	}
	
//	// 뉴스 리스트 지역관련 기사 출력
//	public List<NewsVO> nationList(NewsVO vo) {
//		String statement = mapperRoute+"";
//		return session.selectList(statement, vo);
//	}
	
	// 뉴스 타이틀 검색으로 기사 내용 가져오기
	public NewsVO readNews(NewsVO vo) {
		String statement = mapperRoute+"readNews";
		return session.selectOne(statement, vo);
	}
}