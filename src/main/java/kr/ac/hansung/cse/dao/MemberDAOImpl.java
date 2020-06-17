package kr.ac.hansung.cse.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import kr.ac.hansung.cse.vo.MemberVO;

@Service
public class MemberDAOImpl implements MemberDAO {

	// MyBatis
	@Inject
	private SqlSession sql;
	
	// Mapper
	private static String namespace = "kr.ac.hansung.cse.mapper.memberMapper";
	
	// 회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert(namespace + ".register", vo);
	}
	
	// 로그인
	@Override
	public MemberVO memberLogin(MemberVO vo) throws Exception {
		return sql.selectOne(namespace + ".memberLogin", vo);
	}
			
	
}
