package kr.ac.hansung.cse.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.hansung.cse.util.HttpUtil;

@Controller
public class ProductController { //controller -> service -> dao

	
	@RequestMapping("/productsList" )
	public String productsList(HttpServletRequest request ,Model model) {
		String pageNum = request.getParameter("pageNum");
		String searchVal = request.getParameter("searchVal"); 
		pageNum = pageNum.equals("") == true ? "0" : pageNum; // 카테고리에도 추가 
		List<Map<String, Object>> productList = new ArrayList<Map<String, Object>>();
		try {
			productList = HttpUtil.connectList(searchVal, pageNum);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("searchVal", searchVal);
		model.addAttribute("productList", productList); // 카테고리에도 추가 
		model.addAttribute("pageNum", pageNum);
		
		return "productsInList"; // view's logical name
	}
	
	@RequestMapping("/productsBot" )
	public String productsBot(HttpServletRequest request ,Model model) {
		String searchVal = request.getParameter("searchVal");
		Map<String, Object> productList = new HashMap<String, Object>();
		Map<String, String> product = new HashMap<String, String>();
		
		try {
			productList = HttpUtil.connectListOne(searchVal);
			System.out.println(productList.get("pid"));
			if(productList != null) {
				product = HttpUtil.connectDetail((String)productList.get("pid"));
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("product", product);
		
		return "productsInDetailer"; 
	}
	
	@RequestMapping("/productsInDetailer" )
	public String productsInDetailer(HttpServletRequest request ,Model model) {
		String pid = request.getParameter("pid");
		Map<String, String> product = new HashMap<String, String>();
		
		if(pid != null) {
			product = HttpUtil.connectDetail(pid);
		}
		
		model.addAttribute("product", product);
		
		return "productsInDetailer"; // view's logical name
	}
	
}
