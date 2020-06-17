package kr.ac.hansung.cse.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.hansung.cse.vo.MemberVO;
import kr.ac.hansung.cse.vo.MsgVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//private static final Logger logger = LoggerFactory.getLogger("kr.ac.hansung.cse.controller.HomeController");
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Locale locale, Model model) {
		HttpSession session = request.getSession(true);

		MemberVO member = (MemberVO)session.getAttribute("member");
		model.addAttribute("member",member);
		
		//trace -> debug -> info -> warn -> error
		
		logger.info("info level: Welcome home! The client locale is {}", locale);
		
		String url = request.getRequestURL().toString();
		String clientIPaddress = request.getRemoteAddr();
		logger.info("Request URL: {}, Client IP: {}", url, clientIPaddress);
		
		return "home";
	}
	 
	@RequestMapping("/service")
	public String service() {
		return "main/service";
	}
	
	@RequestMapping("/privacy")
	public String privacy() {
		return "main/privacy";
	}
	
	@RequestMapping("/notice")
	public String notice() {
		return "main/notice";
	}
	
	@RequestMapping("/faq")
	public String faq() {
		return "main/faq";
	}
	
	@RequestMapping("/use")
	public String use() {
		return "main/use";
	}
	
}
