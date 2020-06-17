package kr.ac.hansung.cse.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;


import kr.ac.hansung.cse.vo.MsgVO;



@Service
public class MsgDAOImpl implements MsgDAO {

      // MyBatis
      @Inject
      private SqlSession sql;
      
      // Mapper
      private static String namespace = "kr.ac.hansung.cse.mapper.msgMapper";
      
      // 메시지 전송 
      @Override
      public void msgSend(MsgVO vo) throws Exception {
         sql.insert(namespace + ".msgSend", vo);
      }
      
      // 메시지 읽기
      @Override
      public List<MsgVO> msgRead() throws Exception {
         return sql.selectList(namespace + ".msgRead");
      }
      
      
}