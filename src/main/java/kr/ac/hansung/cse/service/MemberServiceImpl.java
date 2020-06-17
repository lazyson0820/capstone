package kr.ac.hansung.cse.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ac.hansung.cse.dao.MemberDAO;
import kr.ac.hansung.cse.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;

	// 회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}

	// 로그인
	@Override
	public MemberVO memberLogin(MemberVO vo) throws Exception {
		return dao.memberLogin(vo);
	}

}
