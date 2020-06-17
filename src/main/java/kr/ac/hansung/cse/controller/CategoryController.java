package kr.ac.hansung.cse.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.cse.util.DateUtil;
import kr.ac.hansung.cse.util.HttpUtil;

@Controller
public class CategoryController {

	@RequestMapping("/category")
	public String categoryPage(HttpServletRequest request ,Model model) throws UnsupportedEncodingException {
		String categoryNo = request.getParameter("categoryNo");
		String pageNum = request.getParameter("pageNum");
		String searchVal = request.getParameter("searchVal"); 
		List<Map<String, Object>> productList = new ArrayList<Map<String, Object>>();
		if( searchVal != null && !searchVal.equals("") ) {
			productList = HttpUtil.connectList(searchVal, pageNum);
		}else {
			productList = HttpUtil.connectCategory(categoryNo,pageNum);
		}
		model.addAttribute("searchVal", searchVal);
		model.addAttribute("productList", productList); // 카테고리에도 추가 
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("categoryNo", categoryNo);
		return "productsInList";
	}

}
