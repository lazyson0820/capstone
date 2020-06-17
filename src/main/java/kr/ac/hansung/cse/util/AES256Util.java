package kr.ac.hansung.cse.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 양방향 암호화 알고리즘인 AES256 암호화를 지원하는 클래스
 */
public class AES256Util {

	public static String sha256(String msg)  throws NoSuchAlgorithmException {

	    MessageDigest md = MessageDigest.getInstance("SHA-256");

	    md.update(msg.getBytes());

	    return AES256Util.byteToHexString(md.digest());

	}
	
	public static String byteToHexString(byte[] data) {

	    StringBuilder sb = new StringBuilder();

	    for(byte b : data) {

	        sb.append(Integer.toString((b & 0xff) + 0x100, 16).substring(1));

	    }

	    return sb.toString();

	}

}