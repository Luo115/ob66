package com.haha.worm;

import com.haha.mapper.HeroInfoMapper;
import com.haha.pojo.HeroInfo;
import com.haha.util.ConnectUtil;
import com.haha.util.MybatisUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.UUID;

/**
 * 获取所有英雄的数据，并存入数据库中
 * @author sloth
 * @bug 当前逻辑有问题，存入数据库后的数据需改动一些，正确逻辑：扫描left区域160位英雄
 * */
@SuppressWarnings("all")
public class GetHeroInfoWorm {

    public static void main(String[] args) throws Exception {

        //mapper，交互数据库
        HeroInfoMapper mapper = (HeroInfoMapper) MybatisUtil.getMapper();
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
                //泽丽的数据有问题，跳过
                if (i == 3 && j == 24){
                    continue;
                }
                //<tr> 对应一行英雄数据
                Element grandson = child.child(j);
                //获得英雄详细攻略页面的href
                String href = grandson.child(2).child(0).attr("href");
                //访问该href，获得document
                Document doc1 = ConnectUtil.getHeroInfoPage(href);
                //如果只有一页符文页，就不再获取第二页符文
                HeroInfo heroInfo = null;
                if (doc1.selectFirst(".switch").childrenSize() == 1) {
                    heroInfo = createHeroInfo(doc1, href);
                /**---------------插入数据库----------------------*/
                    mapper.insert(heroInfo);
                    System.out.println(heroInfo);
                    continue;
                }
                //如果有两页符文页，获取第二页
                heroInfo = createHeroInfo(doc1, href);
                /**---------------获取符文第二组图标和名字---------------------------*/
                Element runeItem = doc1.selectFirst(".main").child(1).child(0);
                Element row = runeItem.child(0).child(0);
                String rune7 = row.child(0).child(0).attr("src");
                String runeName7 = row.child(0).child(1).text();
                String rune8 = row.child(1).child(0).attr("src");
                String runeName8 = row.child(1).child(1).text();
                String rune9 = row.child(2).child(0).attr("src");
                String runeName9 = row.child(2).child(1).text();
                String rune10 = row.child(3).child(0).attr("src");
                String runeName10 = row.child(3).child(1).text();
                String rune11 = row.child(4).child(0).attr("src");
                String runeName11 = row.child(4).child(1).text();
                Element runeBox = runeItem.child(1).child(0);
                String rune12 = runeBox.child(0).child(0).child(0).attr("src");
                String runeName12 = runeBox.child(0).child(0).child(1).text();
                String runeMini6 = runeBox.child(1).child(0).child(0).attr("src");
                String runeMini6Name = runeBox.child(1).child(0).child(1).text();
                String runeMini5 = runeBox.child(1).child(1).child(0).attr("src");
                String runeMini5Name = runeBox.child(1).child(1).child(1).text();
                String runeMini4 = runeBox.child(1).child(2).child(0).attr("src");
                String runeMini4Name = runeBox.child(1).child(2).child(1).text();
                String runePresentRate2 = runeItem.child(2).child(0).child(1).child(0).text();

                //将获取到的第二页符文页 设置到heroInfo中
                heroInfo.setRune7(rune7).setRuneName7(runeName7).setRune8(rune8).setRuneName8(runeName8)
                        .setRune9(rune9).setRuneName9(runeName9).setRune10(rune10).setRuneName10(runeName10)
                        .setRune11(rune11).setRuneName11(runeName11).setRune12(rune12).setRuneName12(runeName12)
                        .setRuneMini4(runeMini4).setRuneMini4Name(runeMini4Name).setRuneMini5(runeMini5)
                        .setRuneMini5Name(runeMini5Name).setRuneMini6Name(runeMini6Name).setRuneMini6(runeMini6)
                        .setRunePresentRate2(runePresentRate2);
                /**---------------插入数据库----------------------*/
                mapper.insert(heroInfo);
                System.out.println(heroInfo);
            }

        }
    }

    /**
     * 只获取一页符文页，并构建HeroInfo
     * */
    public static HeroInfo createHeroInfo(Document doc1,String href){
        /**---------获取被动和Q W E R的图标路径------------------*/
        Element element1 = doc1.selectFirst(".img_list");
        String passiveIcon = element1.child(0).child(0).attr("src");
        String QIcon = element1.child(1).child(0).attr("src");
        String WIcon = element1.child(2).child(0).attr("src");
        String EIcon = element1.child(3).child(0).attr("src");
        String RIcon = element1.child(4).child(0).attr("src");
        //<tbody>
        /**----------------获取2X2的召唤师技能、登场率------------------*/
        Element select1 = doc1.selectFirst(".css-19hawpw");
        Element element2 = doc1.selectFirst(".css-wc914");
        String summonerSpell1 = doc1.selectFirst(".css-wc914").child(0).child(0).child(0).attr("src");
        String summonerSpell2 = doc1.selectFirst(".css-wc914").child(1).child(1).child(0).attr("src");
        String summonerSpellPresentRate1 = doc1.selectFirst(".css-vvp903").child(0).text();
        String summonerSpell3 = doc1.select(".css-wc914").get(1).child(0).child(0).child(0).attr("src");
        String summonerSpell4 = doc1.select(".css-wc914").get(1).child(1).child(1).child(0).attr("src");
        String summonerSpellPresentRate2 = doc1.select(".css-vvp903").get(1).child(0).text();
        /**---------------获取加点顺序---------------------------*/
        String skillFirst = doc1.selectFirst(".css-1orv2g7").child(0).child(0).child(0).child(1).text();
        String skillSecond = doc1.selectFirst(".css-1orv2g7").child(1).child(1).child(0).child(1).text();
        String skillThird = doc1.selectFirst(".css-1orv2g7").child(2).child(1).child(0).child(1).text();
        /**---------------获取初始装备、推荐装备、鞋，以及对应登场率------------------*/
        String buildInit1 = doc1.selectFirst(".css-1g242xb").child(0).child(0).child(0).attr("src");
        String buildInit2;
        //如果这个位置没有数据，就置空
        if (doc1.selectFirst(".css-1g242xb").childrenSize() == 1) {
            buildInit2 = null;
        } else {
            buildInit2 = doc1.selectFirst(".css-1g242xb").child(1).child(1).child(0).attr("src");
        }
        String buildInitPresentRate1 = doc1.select(".css-vvp903").get(3).child(0).text();
        String buildInit3 = doc1.select(".css-1g242xb").get(1).child(0).child(0).child(0).attr("src");
        String buildInit4;
        //如果这个位置没有数据，就置空
        if (doc1.select(".css-1g242xb").get(1).childrenSize() == 1) {
            buildInit4 = null;
        } else {
            buildInit4 = doc1.select(".css-1g242xb").get(1).child(1).child(1).child(0).attr("src");
        }
        String buildInitPresentRate2 = doc1.select(".css-vvp903").get(4).child(0).text();
        String buildRecommend1 = doc1.select(".css-1g242xb").get(2).child(0).child(0).child(0).attr("src");
        String buildRecommend2 = doc1.select(".css-1g242xb").get(2).child(1).child(1).child(0).attr("src");
        String buildRecommend3 = doc1.select(".css-1g242xb").get(2).child(2).child(1).child(0).attr("src");
        String buildRecommendPresentRate1 = doc1.select(".css-vvp903").get(5).child(0).text();
        String buildRecommend4 = doc1.select(".css-1g242xb").get(3).child(0).child(0).child(0).attr("src");
        String buildRecommend5 = doc1.select(".css-1g242xb").get(3).child(1).child(1).child(0).attr("src");
        String buildRecommend6 = doc1.select(".css-1g242xb").get(3).child(2).child(1).child(0).attr("src");
        String buildRecommendPresentRate2 = doc1.select(".css-vvp903").get(6).child(0).text();
        String buildRecommend7 = doc1.select(".css-1g242xb").get(4).child(0).child(0).child(0).attr("src");
        String buildRecommend8 = doc1.select(".css-1g242xb").get(4).child(1).child(1).child(0).attr("src");
        String buildRecommend9 = doc1.select(".css-1g242xb").get(4).child(2).child(1).child(0).attr("src");
        String buildRecommendPresentRate3 = doc1.select(".css-vvp903").get(7).child(0).text();
        String boot1 = null;
        String boot2 = null;
        String boot3 = null;
        String bootPresentRate1 = null;
        String bootPresentRate2 = null;
        String bootPresentRate3 = null;
        //蛇女不能出鞋子，置空
        if (doc1.select(".css-1g242xb").size() != 5) {
            boot1 = doc1.select(".css-1g242xb").get(5).child(0).child(0).child(0).attr("src");
            boot2 = doc1.select(".css-1g242xb").get(6).child(0).child(0).child(0).attr("src");
            boot3 = doc1.select(".css-1g242xb").get(7).child(0).child(0).child(0).attr("src");
            bootPresentRate1 = doc1.select(".css-vvp903").get(8).child(0).text();
            bootPresentRate2 = doc1.select(".css-vvp903").get(9).child(0).text();
            bootPresentRate3 = doc1.select(".css-vvp903").get(10).child(0).text();
        }

        /**---------------获取符文第一组图标和名字---------------------------*/
        String rune1 = doc1.selectFirst(".rune_box").child(0).child(0).child(0).attr("src");
        String runeName1 = doc1.selectFirst(".rune_box").child(0).child(0).child(1).text();
        String rune2 = doc1.selectFirst(".rune_box").child(0).child(1).child(0).attr("src");
        String runeName2 = doc1.selectFirst(".rune_box").child(0).child(1).child(1).text();
        String rune3 = doc1.selectFirst(".rune_box").child(0).child(2).child(0).attr("src");
        String runeName3 = doc1.selectFirst(".rune_box").child(0).child(2).child(1).text();
        String rune4 = doc1.selectFirst(".rune_box").child(0).child(3).child(0).attr("src");
        String runeName4 = doc1.selectFirst(".rune_box").child(0).child(3).child(1).text();
        String rune5 = doc1.selectFirst(".rune_box").child(0).child(4).child(0).attr("src");
        String runeName5 = doc1.selectFirst(".rune_box").child(0).child(4).child(1).text();
        String rune6 = doc1.select(".rune_box").get(1).child(0).child(0).child(0).attr("src");
        String runeName6 = doc1.select(".rune_box").get(1).child(0).child(0).child(1).text();
        String runeMini3 = doc1.select(".rune_box").get(1).child(1).child(0).child(0).attr("src");
        String runeMiniName3 = doc1.select(".rune_box").get(1).child(1).child(0).child(1).text();
        String runeMini2 = doc1.select(".rune_box").get(1).child(1).child(1).child(0).attr("src");
        String runeMiniName2 = doc1.select(".rune_box").get(1).child(1).child(1).child(1).text();
        String runeMini1 = doc1.select(".rune_box").get(1).child(1).child(2).child(0).attr("src");
        String runeMiniName1 = doc1.select(".rune_box").get(1).child(1).child(2).child(1).text();
        String runePresentRate1 = doc1.selectFirst(".rune_item").child(2).child(0).child(1).child(0).text();

        //href: http://opgg.cn/champion/Fiora/top/build
        //s: Fiora/top/build
        /**---------------英雄名字、称号、位置---------------------------*/
        String s = href.substring(24);
        String nickName = doc1.select(".left").get(1).child(1).child(0).child(0).text();
        String heroName = s.substring(0, s.indexOf('/'));
        String position = s.substring(s.indexOf('/') + 1, s.lastIndexOf('/'));

        String uuid = UUID.randomUUID().toString();
        HeroInfo heroInfo = new HeroInfo(uuid, nickName, heroName, position, passiveIcon, QIcon, WIcon, EIcon, RIcon, summonerSpell1, summonerSpell2, summonerSpellPresentRate1,
                summonerSpell3, summonerSpell4, summonerSpellPresentRate2, skillFirst, skillSecond, skillThird, buildInit1,
                buildInit2, buildInitPresentRate1, buildInit3, buildInit4, buildInitPresentRate2, buildRecommend1, buildRecommend2,
                buildRecommend3, buildRecommendPresentRate1, buildRecommend4, buildRecommend5, buildRecommend6, buildRecommendPresentRate2,
                buildRecommend7, buildRecommend8, buildRecommend9, buildRecommendPresentRate3, boot1, boot2, boot3, bootPresentRate1,
                bootPresentRate2, bootPresentRate3, rune1, runeName1, rune2, runeName2, rune3, runeName3, rune4, runeName4, rune5, runeName5,
                rune6, runeName6, runeMini3, runeMiniName3, runeMini2, runeMiniName2, runeMini1, runeMiniName1, runePresentRate1,
                null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
        return heroInfo;
    }


}