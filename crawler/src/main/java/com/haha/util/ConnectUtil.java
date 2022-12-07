package com.haha.util;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.nio.charset.StandardCharsets;

public class ConnectUtil {
    //得到网站首页document
    public static Document getMainPage() throws Exception{
        //连接一个网站用的类
        HttpClient httpClient = new DefaultHttpClient();
        HttpGet httpGet = new HttpGet("http://opgg.cn");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        HttpEntity entity = httpResponse.getEntity();
        String html = EntityUtils.toString(entity, StandardCharsets.UTF_8);
        //使用Jsoup解析html页面
        return Jsoup.parse(html);
    }

    /**
     * 根据传入的路径，解析成doc返回
     * ===注意===：如果隔一段时间使用，Cookie的值是要动态修改的
     * */
    public static Document getHeroInfoPage(String href) throws Exception{
        HttpClient httpClient = new DefaultHttpClient();
        HttpGet httpGet = new HttpGet(href);
        //由于网站做了权限，需要设置cookie
        httpGet.setHeader("Cookie","_ga=GA1.1.1844547699.1670256376; __gads=ID=d938b287f5c2942c-22d168e1c1d80001:T=1670256376:RT=1670256376:S=ALNI_MYQC2Ov_VipsVX0X3Ps_Kl1d17cyg; token=Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwaS5ub29icGx1cy5jb20vYXBpL3dlY2hhdC9Mb2dpbiIsImlhdCI6MTY3MDI1NjM4OSwiZXhwIjoxNjcwODU2Mzg5LCJuYmYiOjE2NzAyNTYzODksImp0aSI6IklxT3hCUEYxbThjZzJ0blgiLCJzdWIiOjEsInBydiI6IjUwNzA0Y2FmNTNjMjE1ZTJjZGE3NjU1ZGI4NzJhOGIxNTYzOTdjMTQifQ.lM_5XHyPZqadLcsOd_UcsvtRzEquSQHbFWyvvsU9gKE; __gpi=UID=00000b8a804c22e8:T=1670256376:RT=1670348171:S=ALNI_MZkWp6tt6-OkbI7T5XMK-7RLVgmVA; XSRF-TOKEN=eyJpdiI6IkorSlpBUzNWZGhHNkk0UGhVbXdpVkE9PSIsInZhbHVlIjoiM1JwWm9NTVRyZ3hKYThGUTlTN3VTTndGT0dYRDdLM1lkR2dQbFBRam5Fbk1OQkVDZ3R1VmIwZlB4UlZ4STZqczFheE9nbGZneDhtSWZFaWs5RCtORE9qQjJ4LzJ2Y29nTTJKZlZTK2N1L3RyMlYrYm1KbVBhRTUzME9WdVBWWFoiLCJtYWMiOiI4OGNkNDM1NWYzMjg5OTlhYmRjNDUwMTI4NWE0NGQwMGNkOGQxN2JiN2QzNzZlNDFmOWI5NTc4ODgxNmViM2RhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ii9jSjhPcVdLY2RIR1NvNFYrSVZJZkE9PSIsInZhbHVlIjoiYml5bHlIcjhFaERrbUIvTDcyNjRzVXYvRy9HUUphYm44bG1adUFaV2NWZ3lJTnFCYTNOSm1FK2ZzUlp4K1ZCSVBqNUl5NWdzMnJoUFNSTXhxc042Z3lLVHRaSHdvbisyY3JPN3dLTzdHVmtSWGtWem9zTXV6aG91WHJuWXpXTUUiLCJtYWMiOiIxNDdlMGU1MGQ4YjMwMzg2NzFmNTRiMWRiZTFjMGM5NzJlMzFhZjBhYTQ2MGM5M2FhMTA4NTk0YjEyNTkzOWNkIiwidGFnIjoiIn0%3D; _ga_01FH0LYZ3S=GS1.1.1670354886.8.1.1670354889.0.0.0");
        httpGet.setHeader("Referer","http://opgg.cn/");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        HttpEntity entity = httpResponse.getEntity();
        //拿到页面html
        String html = EntityUtils.toString(entity);
        return Jsoup.parse(html);
    }
}
