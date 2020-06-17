package kr.ac.hansung.cse.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

public class HttpUtil {
   
	public static void main(String[] args) throws UnsupportedEncodingException {
		String encodingResult = URLEncoder.encode("가습기","UTF-8");
		System.out.println("Result == > " + encodingResult);
		System.out.println("%EA%B0%80%EC%8A%B5%EA%B8%B0");
	}
	
	//상세보기 모듈
   public static HashMap<String,String> connectDetail(String pid) {

      String targetUrl ="https://api.bunjang.co.kr/api/1/product/"+pid+"/detail_info.json?version=3";
      ObjectMapper mapper = new ObjectMapper();
      HashMap<String,String> resultMap = null;
      try {
         String json = HttpUtil.jsoopBody(targetUrl);
          try {

             Map<Object, Object> map = new HashMap<Object, Object>(); // convert JSON string to Map map
             map = mapper.readValue(json, new TypeReference<Map<Object, Object>>(){});
             resultMap = (HashMap<String, String>) map.get("item_info");

          }catch (Exception e){

            e.printStackTrace();

          }
      } catch (IOException e) {
         e.printStackTrace();
      }

      return resultMap;
   }
   //카테고리 모듈
   public static List<Map<String, Object>> connectCategory(String category_no,String pageNum) {

      String json = "";
      List<Map<String, Object>> resultList = null;
//       if(category.equals("패션잡화")==true) {
//          category_no = "400";
//      }else if(category.equals("여성의류")==true) {
//         category_no = "310";
//      }else if(category.equals("남성의류")==true) {
//         category_no = "320";
//      }else if(category.equals("디지털/가전")==true) {
//         category_no = "600";
//      }else if(category.equals("도서/티켓/취미/애완")==true) {
//         category_no = "900";
//      }else if(category.equals("유아동/출산")==true) {
//         category_no = "500";
//      }else if(category.equals("생활/문구/가구/식품")==true) {
//         category_no = "800";
//      }else if(category.equals("스타굿즈")==true) {
//         category_no = "910";
//      }else if(category.equals("뷰티/미용")==true) {
//         category_no = "410";
//      }else if(category.equals("스포츠/레저")==true) {
//         category_no = "700";
//      }else if(category.equals("기타")==true) {
//         category_no = "999";
//      }else if(category.equals("차량/오토바이")==true) {
//         category_no = "750";
//      }else if(category.equals("구인구직")==true) {
//         category_no = "240";
//      }else if(category.equals("재능")==true) {
//         category_no = "210";
//      }else if(category.equals("번개나눔")==true) {
//         category_no = "200";
//      }else if(category.equals("지역 서비스")==true) {
//         category_no = "220";
//      }else if(category.equals("커뮤니티")==true) {
//         category_no = "100";
//      }else if(category.equals("원룸")==true) {
//         category_no = "230";
//      }
      //String category_no = "400";패션잡화
      //String category_no = "310";여성의류
      //String category_no = "320";남성의류
      //String category_no = "600";디지털/가전
      //String category_no = "900";도서/티켓/취미/애완
      //String category_no = "500";유아동/출산
      //String category_no = "800";생활/문구/가구/식품
      //String category_no = "910";스타굿즈
      //String category_no = "410";뷰티/미용
      //String category_no = "700";스포츠/레저
      //String category_no = "999";기타
      //String category_no = "750";차량/오토바이
      //String category_no = "240";구인구직
      //String category_no = "210";재능
      //String category_no = "200";번개나눔
      //String category_no = "220";지역 서비스
      //String category_no = "100";커뮤니티
      //String category_no = "230";원룸


      String toDay = DateUtil.getCurrentDateTime();
      String targetUrl = "https://mapi.bunjang.co.kr/api/1/find_v2.json?";
            targetUrl +="f_category_id="+category_no+"&page="+pageNum+"&order=date&request_id="+toDay;
            targetUrl +="&req_ref=popular_category&stat_uid=2274203&stat_device=w&n=30&version=4";
      try {
    	  
         json = HttpUtil.jsoopBody(targetUrl);

         ObjectMapper mapper = new ObjectMapper();

         try {

             Map<Object, Object> map = new HashMap<Object, Object>(); // convert JSON string to Map map
             map = mapper.readValue(json, new TypeReference<Map<Object, Object>>(){});
             String jsonList = mapper.writeValueAsString(map.get("list")); // convert Map map to JSON string
             resultList = new ObjectMapper().readValue(jsonList, new TypeReference<List<Map<String, Object>>>(){}); // convert JSON string to List Map

         }catch (Exception e){
           e.printStackTrace();
         }

      } catch (IOException e) {
         e.printStackTrace();
      }

      return resultList;
   }
   //리스트 모듈
   public static List<Map<String, Object>> connectList(String searchVal , String pageNum ) throws UnsupportedEncodingException {
     
      String toDay = DateUtil.getCurrentDateTime();
      if(searchVal != null && !searchVal.equals("")) {
    	  searchVal = URLEncoder.encode(searchVal,"UTF-8");
      }
      //String targetUrl = "https://api.bunjang.co.kr/api/1/find_v2.json?q=%EA%B0%80%EC%8A%B5%EA%B8%B0&order=date&page=0&request_id=2020603164613&stat_uid=2274203&stat_device=w&n=30&stat_category_required=1&req_ref=search&version=4";
      String targetUrl = "https://api.bunjang.co.kr/api/1/find_v2.json?q="+searchVal+"&order=date&page="+pageNum ;
            targetUrl += "&request_id="+toDay+"&stat_uid=2274203";
            targetUrl += "&stat_device=w&n=30&stat_category_required=1&req_ref=search&version=4";
      String json = "";
      List<Map<String, Object>> resultList = null;

      try {

         json = HttpUtil.jsoopBody(targetUrl);

         ObjectMapper mapper = new ObjectMapper();

          try {

             Map<Object, Object> map = new HashMap<Object, Object>(); // convert JSON string to Map map
             map = mapper.readValue(json, new TypeReference<Map<Object, Object>>(){});
             String jsonList = mapper.writeValueAsString(map.get("list")); // convert Map map to JSON string
             resultList = new ObjectMapper().readValue(jsonList, new TypeReference<List<Map<String, Object>>>(){}); // convert JSON string to List Map

          }catch (Exception e){
            e.printStackTrace();
          }

      } catch (IOException e) {
         e.printStackTrace();
      }
      return resultList;
   }
   
   //리스트 모듈
   public static Map<String, Object> connectListOne(String searchVal) throws UnsupportedEncodingException {
     
      String toDay = DateUtil.getCurrentDateTime();
      if(searchVal != null && !searchVal.equals("")) {
    	  searchVal = URLEncoder.encode(searchVal,"UTF-8");
      }
      String targetUrl = "https://api.bunjang.co.kr/api/1/find_v2.json?q="+searchVal+"&order=date&page=0";
            targetUrl += "&request_id="+toDay+"&stat_uid=2274203";
            targetUrl += "&stat_device=w&n=1&stat_category_required=1&req_ref=search&version=4";
      String json = "";
      List<Map<String, Object>> resultList = null;
      Map<String, Object> resultMap = null;
      try {

         json = HttpUtil.jsoopBody(targetUrl);

         ObjectMapper mapper = new ObjectMapper();

          try {

             Map<Object, Object> map = new HashMap<Object, Object>(); // convert JSON string to Map map
             map = mapper.readValue(json, new TypeReference<Map<Object, Object>>(){});
             String jsonList = mapper.writeValueAsString(map.get("list")); // convert Map map to JSON string
             resultList = new ObjectMapper().readValue(jsonList, new TypeReference<List<Map<String, Object>>>(){}); // convert JSON string to List Map
             resultMap = resultList.get(0);
          }catch (Exception e){
            e.printStackTrace();
          }

      } catch (IOException e) {
         e.printStackTrace();
      }
      return resultMap;
   }
   

   public static String httpConnection(String targetUrl) {
       URL url = null;
       HttpURLConnection conn = null;
       String jsonData = "";
       BufferedReader br = null;
       StringBuffer sb = null;
       String returnText = "";

       try {
           url = new URL(targetUrl);

           conn = (HttpURLConnection) url.openConnection();
           conn.setRequestProperty("Accept", "application/json");
           conn.setRequestMethod("GET");
           conn.connect();

           br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));

           sb = new StringBuffer();

           while ((jsonData = br.readLine()) != null) {
               sb.append(jsonData);
           }

           returnText = sb.toString();

       } catch (IOException e) {
           e.printStackTrace();
       } finally {
           try {
               if (br != null) br.close();
           } catch (IOException e) {
               e.printStackTrace();
           }
       }

       return returnText;
   }

   public static String jsoopBody(String targetUrl) throws IOException {

      String json = Jsoup.connect(targetUrl)
            .data("part", "snippet")
            .timeout(4000)
            .userAgent("Mozilla")
            .ignoreContentType(true)
            .execute().body();

       return json.toString();
   }

}
