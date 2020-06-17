package kr.ac.hansung.cse.dao;

import java.util.List;


import kr.ac.hansung.cse.vo.MsgVO;

public interface MsgDAO {

	//메시지 전송
	public void msgSend(MsgVO vo) throws Exception;
	
	//메시지 읽기
	public List<MsgVO> msgRead() throws Exception;
}
