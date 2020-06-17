package kr.ac.hansung.cse.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.hansung.cse.service.MemberService;
import kr.ac.hansung.cse.util.AES256Util;
import kr.ac.hansung.cse.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	MemberService service;

	// 회원 가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 회원 가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register");
		vo.setUserPass(AES256Util.sha256(vo.getUserPass())); 
		service.register(vo);
		
		return "redirect:/";
	}
	
	// 로그인폼
	@RequestMapping(value = "/loginForm")
	public String loginForm() throws Exception {
		
		logger.info("loginForm");
		
		return"member/loginForm";
	}
	
	// 로그인폼
	@RequestMapping(value = "/login")
	public String login(MemberVO vo,HttpServletRequest request,Model model) throws Exception {
		String resultpage = "member/loginFail";
		String resultMsg = "";
		HttpSession session = request.getSession(true);
		vo.setUserPass(AES256Util.sha256(vo.getUserPass())); 
		MemberVO member = service.memberLogin(vo);
		if(member != null) {
			session.setAttribute("member", member);
			session.setMaxInactiveInterval(60*30);
			resultpage = "redirect:../";
		}else {
			resultMsg = "로그인에 실패하였습니다. 로그인정보를 확인해주세요";
		}
		model.addAttribute("resultMsg",resultMsg);
		logger.info("loginForm");
		return resultpage;
	}
	
	// 로그아웃
	@RequestMapping(value = "/logOut")
	public String login(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		session.removeAttribute("member");
		
		return "redirect:../";
	}
}