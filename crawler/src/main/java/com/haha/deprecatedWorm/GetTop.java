package com.haha.deprecatedWorm;

import com.haha.pojo.Rank;
import com.haha.mapper.TopRankMapper;
import com.haha.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.BufferedReader;
import java.io.FileReader;

/**
 * 扒取首页Jungle位置排名信息
 * 由于该页通过网络获取，数据会有问题，需要手动获取该页面后进行分析
 * 页面下载地址https://www.op.gg/champions?region=global&tier=platinum_plus&position=top
 * 页面存放位置：pages/top.html
 * 具体操作如下：
 * 1.进入网站，F12查看元素，选中需要的<table>标签,复制元素到pages/top.html
 * 2.运行
 *
 * @author sloth
 * @deprecated
 */
public class GetTop {
    public static void main(String[] args) throws Exception {
        //获取网页
        BufferedReader reader = new BufferedReader(new FileReader(
                "D:\\Projects\\SpringCloud01\\crawler\\src\\main\\resources\\pages\\top.html"));
        StringBuilder stringBuilder = new StringBuilder();
        String line = null;
        while ((line = reader.readLine()) != null) {
            stringBuilder.append(line);
        }
        reader.close();
        String html = stringBuilder.toString();

        //Jsoup解析 返回的 html页面
        Document doc = Jsoup.parse(html);
        //查找出所需要的数据所在的标签位置
        Elements elements = doc.select(".css-jgru8w tbody tr");

        for (Element element : elements) {
            Elements children = element.children();
            //过滤style标签
            children.removeIf(element1 -> element1.nodeName().equals("style"));
            //对子标签进行处理,获取需要的数据
            Element element1 = children.get(0);
            Element element2 = children.get(1);
            Element element3 = children.get(2);
            Element element4 = children.get(3);
            Element element5 = children.get(4);
            Element element6 = children.get(5);

            //获得level
            int level = Integer.parseInt(element1.child(0).ownText());
            //获得英雄名和头像
            //https://opgg-static.akamaized.net/meta/images/lol/champion/Aatrox.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_png,w_64&amp;v=1669952275953
            String src = element2.child(0).child(0).attr("src");
            int index1 = src.indexOf(".png");
            //获得英雄名字
            String heroName = src.substring(59, index1);
            //获得英雄层级
            int layer = Integer.parseInt(element3.ownText());
            //获得英雄数据
            float winRate = Float.parseFloat(element4.ownText().substring(0, element4.ownText().lastIndexOf("%")));
            float pickRate = Float.parseFloat(element5.ownText().substring(0, element5.ownText().lastIndexOf("%")));
            float banRate = Float.parseFloat(element6.ownText().substring(0, element6.ownText().lastIndexOf("%")));


            //构建一条记录
//            Rank rank = new Rank(UUID.randomUUID().toString(), heroName, level, layer, winRate, pickRate, banRate, GetJungle.getTime());
//            //插入数据库
//            insert(rank);
        }
    }


    public static void insert(Rank rank) throws Exception {
        SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            TopRankMapper mapper = sqlSession.getMapper(TopRankMapper.class);
            mapper.insert(rank);
        }
    }


}
