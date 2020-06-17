package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.vo.MemberVO;

public interface MemberService {
	
	//회원 가입
	public void register(MemberVO vo) throws Exception;

	//로그인
	public MemberVO memberLogin(MemberVO vo) throws Exception;
	
}
