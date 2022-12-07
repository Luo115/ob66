package com.haha.util;

import java.util.Calendar;

public class TimeUtil {


    public static String getTime(){
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH) + 1;
        int date = c.get(Calendar.DAY_OF_MONTH);
        int hour = c.get(Calendar.HOUR_OF_DAY);
        int minute = c.get(Calendar.MINUTE);
        return "" + year + "/" + month + "/" + date + "/" + hour + ":" + minute;
    }
}
