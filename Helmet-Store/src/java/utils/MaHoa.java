/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.security.MessageDigest;
import org.apache.tomcat.util.codec.binary.Base64;

public class MaHoa {
	public static String toSHA1(String str) {
		String result =null;
		String saltString = "sdf./',sc['.sdfhfadashfhd";
		
		str = str+saltString;
		
		try {
			byte[] dataBytes = str.getBytes("UTF-8");
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			result = Base64.encodeBase64String(md.digest(dataBytes));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static void main(String[] args) {
		System.out.println(MaHoa.toSHA1("123456"));
	}
}