package com.app.utils;

import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

public class MainUtils {
	
	public static String getFileType(String fileName) {
        String[] strArray = fileName.split("\\.");
        int suffixIndex = strArray.length -1;
        System.out.println(strArray[suffixIndex]);
        return strArray[suffixIndex];        
    }
	
	public static long getDatePoor(Date endDate, Date nowDate) {
		 
	    long nd = 1000 * 24 * 60 * 60;
	    long nh = 1000 * 60 * 60;
	    long nm = 1000 * 60;
	    // long ns = 1000;
	    // �������ʱ��ĺ���ʱ�����
	    long diff = endDate.getTime() - nowDate.getTime();
	    // ����������
	    long day = diff / nd;
	    // ��������Сʱ
	    long hour = diff % nd / nh;
	    // �������ٷ���
	    long min = diff % nd % nh / nm;
	    // ����������//������
	    // long sec = diff % nd % nh % nm / ns;
	    return hour;
	}
	
	//��������
	public static int POSTVAL=10;
	//��������
	public static int REPLYVAL=5;
	//��¼����
	public static int LOGINVAL=5;
public static int compareDdate(String DATE1, String DATE2) {
        
        
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        try {
            Date dt1 = df.parse(DATE1);
            Date dt2 = df.parse(DATE2);
            if (dt1.getTime() > dt2.getTime()) {
                System.out.println("dt1 ��dt2ǰ");
                return 1;
            } else if (dt1.getTime() < dt2.getTime()) {
                System.out.println("dt1��dt2��");
                return -1;
            } else {
                return 0;
            }
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return 0;
    }
public static String getEcard()
{
	Random random = new Random();
	String ecard = "";
	for(int i=0;i<10;i++)
	{
		ecard+=random.nextInt(10);
	}
	return ecard;
}


	
	public static String encode(String in) 
	{
		try {
			return new String(in.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return in;
	}
	
	public static String getTime()
	{
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		String dateTime = df.format(date);
		return dateTime;
	}
	
	public static Date convertTime(String in) throws ParseException
	{
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//Date date = new Date(in);
		System.out.println(in);
		Date date = df.parse(in);
		//String dateTime = df.format(date);
		return date;
	}
	
	public static String getYear(Date in)
	{		
		Calendar clr = Calendar.getInstance();
		clr.setTime(in);
		
		return clr.get(Calendar.YEAR)+"";
	}
	

	public static String getMouth(Date in)
	{
		Calendar clr = Calendar.getInstance();
		clr.setTime(in);
		
		return clr.get(Calendar.MONTH)+"";
	}
	
	
	public static String getOrderIdByUUId() {
        int machineId = 1;//���֧��1-9����Ⱥ��������
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if(hashCodeV < 0) {//�п����Ǹ���
            hashCodeV = - hashCodeV;
        }
        // 0 ����ǰ�油��0     
        // 4 ������Ϊ4     
        // d �������Ϊ������
        return machineId + String.format("%015d", hashCodeV);
    }
	public static String getDay(Date in)
	{		
		Calendar clr = Calendar.getInstance();
		clr.setTime(in);
		
		return clr.get(Calendar.DAY_OF_MONTH)+"";
	}
}
