package kr.ac.hansung.cse.service;

import java.util.List;

import kr.ac.hansung.cse.vo.MsgVO;

public interface MsgService {

	//메시지전송
	public void msgSend(MsgVO vo) throws Exception;
	
	//메시지읽기
	public List<MsgVO> msgRead() throws Exception;
}
