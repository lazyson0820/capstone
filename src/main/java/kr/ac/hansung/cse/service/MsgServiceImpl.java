package kr.ac.hansung.cse.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ac.hansung.cse.dao.MsgDAO;
import kr.ac.hansung.cse.vo.MsgVO;


@Service
public class MsgServiceImpl implements MsgService {

	@Inject
	private MsgDAO dao;

	// 메시지 전송
	@Override
	public void msgSend(MsgVO vo) throws Exception {
		dao.msgSend(vo);
	}
	
	// 메시지 읽기
	@Override
	public List<MsgVO> msgRead() throws Exception {
		return dao.msgRead();
	}
}
