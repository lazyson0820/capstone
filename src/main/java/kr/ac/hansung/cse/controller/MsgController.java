package kr.ac.hansung.cse.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.hansung.cse.service.MsgService;
import kr.ac.hansung.cse.vo.MsgVO;

@Controller
public class MsgController {

   private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
   
   @Inject
   MsgService service;
   
   // 메시지 전송 get
   @RequestMapping(value = "/msgSend", method = RequestMethod.GET)
   public void getmsgSend() throws Exception {
      logger.info("get msgSend");
   }
   
   // 메시지 전송 post
   @RequestMapping(value = "/msgSend", method = RequestMethod.POST)
   public String postmsgSend(MsgVO vo) throws Exception {
      logger.info("post register");
      service.msgSend(vo);
      
      return "redirect:/";
   }
    
   // 메시지 읽기 
   @RequestMapping(value = "/msgRead")
   public String msgRead(Model model) throws Exception {
      
	  List<MsgVO> list = service.msgRead();
	  model.addAttribute("list", list);
			  
      logger.info("msgRead");
      
      return"/msgRead";
   }
   
}