package kr.ac.hansung.cse.dao;

import kr.ac.hansung.cse.vo.MemberVO;

public interface MemberDAO {

	//회원 가입
	public void register(MemberVO vo) throws Exception;

	//로그인
	public MemberVO memberLogin(MemberVO vo) throws Exception;

}
