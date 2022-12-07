package com.haha.deprecatedWorm;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

/**
 * 获取162个英雄头像! 并且以 英雄名字+png 命名
 * 存放位置resources/imgs/
 *
 * @author sloth
 * @deprecated
 */
public class GetAvatar {
    public static void main(String[] args) throws IOException {
        //Apache的HttpClient解析网站
        HttpClient httpClient = new DefaultHttpClient();

        String url = "https://www.op.gg/champions";

        HttpGet httpGet = new HttpGet(url);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        HttpEntity entity = httpResponse.getEntity();
        String html = EntityUtils.toString(entity, StandardCharsets.UTF_8);


        //Jsoup解析 返回的 dom
        Document doc = Jsoup.parse(html);
        //查找出所有<img>
        Elements elements = doc.select("img");
        for (Element ele : elements) {
            String src = ele.attr("src");
//https://opgg-static.akamaized.net/meta/images/lol/champion/TwistedFate.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_92&amp;v=1669952275953
            //？所在的位置
            if (src.startsWith("https://opgg-static.akamaized.net/meta")) {

                //在url中截取出名字
                int index1 = src.indexOf("?");
                String subString = src.substring(59, index1);
                OutputStream os = new FileOutputStream("D:\\Projects\\SpringCloud01\\crawler\\src\\main\\resources\\imgs\\" + subString);
                //去掉url？后跟的参数
                String src1 = src.substring(0, index1);

                HttpGet get = new HttpGet(src1);
                HttpResponse response = httpClient.execute(get);
                HttpEntity entity1 = response.getEntity();
                entity1.writeTo(os);

                os.close();

                System.out.println(src);
            }


        }

    }
}
