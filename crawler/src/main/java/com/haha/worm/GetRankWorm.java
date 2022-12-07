package com.haha.worm;

import com.haha.pojo.Rank;
import com.haha.mapper.*;
import com.haha.util.ConnectUtil;
import com.haha.util.MybatisUtil;
import com.haha.util.TimeUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.UUID;

/**
 *  爬取首页的5列记录，存入数据库
 *  @author sloth
* */
public class GetRankWorm {

    public static void main(String[] args) throws Exception {
        //使用工具类获得网站首页
        Document doc = ConnectUtil.getMainPage();
        //首页英雄的所有数据
        Elements elements = doc.select(".table");
        Element element = elements.get(0);
        for (int i = 0; i < 5; i++) {
            //分别对上中野ad辅助五个位置进行处理    elements.size() == 5
            //<tbody>
            Element child = element.child(i);
            //下标0号是标题 不需要该数据
            for (int j = 1; j < child.childrenSize(); j++) {
                //<tr> 对应一行英雄数据
                Element grandson = child.child(j);
                //分析需要的数据
                int level = Integer.parseInt(grandson.child(0).child(0).text());
                String layer = grandson.child(1).child(0).text();
                String avatar = grandson.child(2).child(0).child(0).attr("src");
                String heroName = grandson.child(2).child(0).child(1).child(0).text();
                String winRate = grandson.child(3).text();
                String pickRate = grandson.child(4).text();
                //构建一行数据
                Rank rank = new Rank(UUID.randomUUID().toString(), heroName, level, layer, winRate, pickRate, avatar, TimeUtil.getTime());
                //根据当前是top\jungle\mid\bottom\support 插入对应的表
                switch (i) {
                    case 0:
                        MybatisUtil.insert(rank, TopRankMapper.class);
                        break;
                    case 1:
                        MybatisUtil.insert(rank, JungleRankMapper.class);
                        break;
                    case 2:
                        MybatisUtil.insert(rank, MiddleRankMapper.class);
                        break;
                    case 3:
                        MybatisUtil.insert(rank, BottomRankMapper.class);
                        break;
                    case 4:
                        MybatisUtil.insert(rank, SupportRankMapper.class);
                        break;
                    default:
                        throw new Exception("插入表有误");
                }
            }
        }
    }
}
