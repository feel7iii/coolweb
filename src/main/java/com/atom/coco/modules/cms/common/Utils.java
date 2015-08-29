package com.atom.coco.modules.cms.common;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.io.FileUtils;

public class Utils {

	public static final String PATTERN_FULL_NUMBER = "^\\d+$";
	private static Properties properties = new Properties();
	private static Map<String, ArrayList<String>> localDefineMap = new HashMap<String, ArrayList<String>>();
	public static final String DEFAULT_PROPERTY_FILE = "config.properties";
	public static Map<String, Map<String, String>> statisticCacheMap = new HashMap<String, Map<String, String>>();
	public static final Map<String, String> snapshotAuthSessionMap = new HashMap<String, String>();

	public static String getStrValue(Object obj) {
		if (obj == null) {
			return null;
		}
		return obj.toString();
	}

	public static boolean isEmpty(String str) {
		return str == null || str.trim().length() <= 0;
	}

	/**
	 * 将String类型转换成int型
	 * 
	 * @param String
	 *            sourceString
	 * @return int 转换后的int型
	 */
	public static int toNumber(String sourceString) {
		return toNumber(sourceString, 0);
	}

	/**
	 * @reload 将String类型转换成int型数字
	 * @param String
	 *            sourceString
	 * @param int defaultValue
	 * @return int 转换后的int型
	 */
	public static int toNumber(String sourceString, int defaultValue) {
		return isDigitalNumber(sourceString) && Long.parseLong(sourceString) <= Integer.MAX_VALUE ? Integer.parseInt(sourceString) : defaultValue;
	}

	/**
	 * 将String类型转换成long型
	 * 
	 * @param String
	 *            sourceString
	 * @return long 转换后的long型
	 */
	public static long toLongNumber(String sourceString) {
		return toLongNumber(sourceString, 0);
	}

	/**
	 * @reload 将String类型转换成long型数字
	 * @param String
	 *            sourceString
	 * @param long defaultValue
	 * @return long 转换后的long型
	 */
	public static long toLongNumber(String sourceString, long defaultValue) {
		return isDigitalNumber(sourceString) ? Long.parseLong(sourceString) : defaultValue;
	}

	/**
	 * 判断是否为数字
	 * 
	 * @param String
	 *            sourceString
	 * @return boolean
	 */
	public static boolean isDigitalNumber(String sourceString) {
		return sourceString != null && sourceString.matches(PATTERN_FULL_NUMBER);
	}

	public static double formatDouble(double d, String pattern) {
		DecimalFormat format = (DecimalFormat) NumberFormat.getInstance();
		format.applyPattern(pattern);
		String s = format.format(d);
		d = Double.parseDouble(s);
		return d;
	}

	public static boolean loadProperties1(String fileName) {
		try {
			properties.load(new FileInputStream(fileName));
		} catch (IOException e) {
			return false;
		}
		return true;
	}

	public static boolean loadProperties(InputStream is) {
		try {
			properties.load(is);
		} catch (IOException e) {
			return false;
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return true;
	}

	public static String getProperty(String key) {
		return properties.getProperty(key);
	}

	public static String getProperty(String key, String defaultValue) {
		return properties.getProperty(key, defaultValue);
	}

	public static Properties getProperties() {
		return properties;
	}

	public static Map<String, ArrayList<String>> getLocalDefineMap() {
		return localDefineMap;
	}

	public static void setLocalDefineMap(Map<String, ArrayList<String>> defineMap) {
		localDefineMap = defineMap;
	}

	public static void setProperty(String key, String value) {
		try {
			properties.setProperty(key, value);
			Properties prop1 = new Properties();

			String path = Utils.class.getClassLoader().getResource(DEFAULT_PROPERTY_FILE).getPath();

			InputStream is = FileUtils.openInputStream(new File(path));
			prop1.load(is);

			OutputStream ous = FileUtils.openOutputStream(new File(path));
			prop1.setProperty(key, value);
			prop1.store(ous, "Update '" + key + "'" + value);
			is.close();
			ous.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public static boolean contain(Object[] partNames, Object dataType) {
		if (partNames != null) {
			for (Object ob : partNames) {
				if (ob.equals(dataType)) {
					return true;
				}
			}
		}
		return false;
	}

	public static String splitAndFilterString(String input) {
		if (input == null || input.trim().equals("")) {
			return "";
		}
		// 去掉所有html元素,
		String str = input.replaceAll("\\&[a-zA-Z]{1,10};", "").replaceAll("<[^>]*>", "");
		str = str.replaceAll("[(/>)<]", "");
		str = str.replaceAll("\\[pagebreak\\].*\\[pagebreak\\]", "");

		return str;
	}

	public static byte[] writeObj(Object obj) throws IOException {
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		ObjectOutputStream oos = new ObjectOutputStream(bos);
		oos.writeObject(obj);
		bos.close();
		oos.close();
		return bos.toByteArray();
	}

	public static Object readObj(byte[] bos) throws IOException, ClassNotFoundException {
		ByteArrayInputStream bis = new ByteArrayInputStream(bos);
		ObjectInputStream ois = new ObjectInputStream(bis);
		bis.close();
		ois.close();
		return ois.readObject();
	}

	public static boolean isContainsChinese(String str) {
		if (str.length() < str.getBytes().length) {
			return true;
		} else {
			return false;
		}
	}
}
