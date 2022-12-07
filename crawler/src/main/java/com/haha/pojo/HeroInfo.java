package com.haha.pojo;

import io.mybatis.provider.Entity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import java.io.Serializable;

/**
 *  使用Mybatis-mapper自动生成mapper
 * */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
@Entity.Table("heroinfo")
public class HeroInfo implements Serializable {
    @Entity.Column( id = true)
    String id;
    @Entity.Column
    String nickName;
    @Entity.Column
    String heroName;
    @Entity.Column
    String position;
    @Entity.Column
    String passiveIcon;
    @Entity.Column
    String QIcon;
    @Entity.Column
    String WIcon;
    @Entity.Column
    String EIcon;
    @Entity.Column
    String RIcon;
    @Entity.Column
    String summonerSpell1;
    @Entity.Column
    String summonerSpell2;
    @Entity.Column
    String summonerSpellPresentRate1;
    @Entity.Column
    String summonerSpell3;
    @Entity.Column
    String summonerSpell4;
    @Entity.Column
    String summonerSpellPresentRate2;
    @Entity.Column
    String skillFirst;
    @Entity.Column
    String skillSecond;
    @Entity.Column
    String skillThird;
    @Entity.Column
    String buildInit1;
    @Entity.Column
    String buildInit2;
    @Entity.Column
    String buildInitPresentRate1;
    @Entity.Column
    String buildInit3;
    @Entity.Column
    String buildInit4;
    @Entity.Column
    String buildInitPresentRate2;
    @Entity.Column
    String buildRecommend1;
    @Entity.Column
    String buildRecommend2;
    @Entity.Column
    String buildRecommend3;
    @Entity.Column
    String buildRecommendPresentRate1;
    @Entity.Column
    String buildRecommend4;
    @Entity.Column
    String buildRecommend5;
    @Entity.Column
    String buildRecommend6;
    @Entity.Column
    String buildRecommendPresentRate2;
    @Entity.Column
    String buildRecommend7;
    @Entity.Column
    String buildRecommend8;
    @Entity.Column
    String buildRecommend9;
    @Entity.Column
    String buildRecommendPresentRate3;
    @Entity.Column
    String boot1;
    @Entity.Column
    String boot2;
    @Entity.Column
    String boot3;
    @Entity.Column
    String bootPresentRate1;
    @Entity.Column
    String bootPresentRate2;
    @Entity.Column
    String bootPresentRate3;
    @Entity.Column
    String rune1;
    @Entity.Column
    String runeName1;
    @Entity.Column
    String rune2;
    @Entity.Column
    String runeName2;
    @Entity.Column
    String rune3;
    @Entity.Column
    String runeName3;
    @Entity.Column
    String rune4;
    @Entity.Column
    String runeName4;
    @Entity.Column
    String rune5;
    @Entity.Column
    String runeName5;
    @Entity.Column
    String rune6;
    @Entity.Column
    String runeName6;
    @Entity.Column
    String runeMini3;
    @Entity.Column
    String runeMiniName3;
    @Entity.Column
    String runeMini2;
    @Entity.Column
    String runeMiniName2;
    @Entity.Column
    String runeMini1;
    @Entity.Column
    String runeMiniName1;
    @Entity.Column
    String runePresentRate1;
    @Entity.Column
    String rune7;
    @Entity.Column
    String runeName7;
    @Entity.Column
    String rune8;
    @Entity.Column
    String runeName8;
    @Entity.Column
    String rune9;
    @Entity.Column
    String runeName9;
    @Entity.Column
    String rune10;
    @Entity.Column
    String runeName10;
    @Entity.Column
    String rune11;
    @Entity.Column
    String runeName11;
    @Entity.Column
    String rune12;
    @Entity.Column
    String runeName12;
    @Entity.Column
    String runeMini6;
    @Entity.Column
    String runeMini6Name;
    @Entity.Column
    String runeMini5;
    @Entity.Column
    String runeMini5Name;
    @Entity.Column
    String runeMini4;
    @Entity.Column
    String runeMini4Name;
    @Entity.Column
    String runePresentRate2;

}
