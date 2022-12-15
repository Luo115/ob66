package com.haha.common.pojo;

import java.io.Serializable;
import javax.persistence.*;

@SuppressWarnings("all")
public class HeroInfo implements Serializable {
    @Id
    private String id;

    @Column(name = "nickName")
    private String nickname;

    @Column(name = "heroName")
    private String heroname;

    private String position;

    @Column(name = "passiveIcon")
    private String passiveicon;

    @Column(name = "QIcon")
    private String qicon;

    @Column(name = "WIcon")
    private String wicon;

    @Column(name = "EIcon")
    private String eicon;

    @Column(name = "RIcon")
    private String ricon;

    @Column(name = "summonerSpell1")
    private String summonerspell1;

    @Column(name = "summonerSpell2")
    private String summonerspell2;

    @Column(name = "summonerSpellPresentRate1")
    private String summonerspellpresentrate1;

    @Column(name = "summonerSpell3")
    private String summonerspell3;

    @Column(name = "summonerSpell4")
    private String summonerspell4;

    @Column(name = "summonerSpellPresentRate2")
    private String summonerspellpresentrate2;

    @Column(name = "skillFirst")
    private String skillfirst;

    @Column(name = "skillSecond")
    private String skillsecond;

    @Column(name = "skillThird")
    private String skillthird;

    @Column(name = "buildInit1")
    private String buildinit1;

    @Column(name = "buildInit2")
    private String buildinit2;

    @Column(name = "buildInitPresentRate1")
    private String buildinitpresentrate1;

    @Column(name = "buildInit3")
    private String buildinit3;

    @Column(name = "buildInit4")
    private String buildinit4;

    @Column(name = "buildInitPresentRate2")
    private String buildinitpresentrate2;

    @Column(name = "buildRecommend1")
    private String buildrecommend1;

    @Column(name = "buildRecommend2")
    private String buildrecommend2;

    @Column(name = "buildRecommend3")
    private String buildrecommend3;

    @Column(name = "buildRecommendPresentRate1")
    private String buildrecommendpresentrate1;

    @Column(name = "buildRecommend4")
    private String buildrecommend4;

    @Column(name = "buildRecommend5")
    private String buildrecommend5;

    @Column(name = "buildRecommend6")
    private String buildrecommend6;

    @Column(name = "buildRecommendPresentRate2")
    private String buildrecommendpresentrate2;

    @Column(name = "buildRecommend7")
    private String buildrecommend7;

    @Column(name = "buildRecommend8")
    private String buildrecommend8;

    @Column(name = "buildRecommend9")
    private String buildrecommend9;

    @Column(name = "buildRecommendPresentRate3")
    private String buildrecommendpresentrate3;

    private String boot1;

    private String boot2;

    private String boot3;

    @Column(name = "bootPresentRate1")
    private String bootpresentrate1;

    @Column(name = "bootPresentRate2")
    private String bootpresentrate2;

    @Column(name = "bootPresentRate3")
    private String bootpresentrate3;

    private String rune1;

    @Column(name = "runeName1")
    private String runename1;

    private String rune2;

    @Column(name = "runeName2")
    private String runename2;

    private String rune3;

    @Column(name = "runeName3")
    private String runename3;

    private String rune4;

    @Column(name = "runeName4")
    private String runename4;

    private String rune5;

    @Column(name = "runeName5")
    private String runename5;

    private String rune6;

    @Column(name = "runeName6")
    private String runename6;

    @Column(name = "runeMini3")
    private String runemini3;

    @Column(name = "runeMiniName3")
    private String runemininame3;

    @Column(name = "runeMini2")
    private String runemini2;

    @Column(name = "runeMiniName2")
    private String runemininame2;

    @Column(name = "runeMini1")
    private String runemini1;

    @Column(name = "runeMiniName1")
    private String runemininame1;

    @Column(name = "runePresentRate1")
    private String runepresentrate1;

    private String rune7;

    @Column(name = "runeName7")
    private String runename7;

    private String rune8;

    @Column(name = "runeName8")
    private String runename8;

    private String rune9;

    @Column(name = "runeName9")
    private String runename9;

    private String rune10;

    @Column(name = "runeName10")
    private String runename10;

    private String rune11;

    @Column(name = "runeName11")
    private String runename11;

    private String rune12;

    @Column(name = "runeName12")
    private String runename12;

    @Column(name = "runeMini6")
    private String runemini6;

    @Column(name = "runeMini6Name")
    private String runemini6name;

    @Column(name = "runeMini5")
    private String runemini5;

    @Column(name = "runeMini5Name")
    private String runemini5name;

    @Column(name = "runeMini4")
    private String runemini4;

    @Column(name = "runeMini4Name")
    private String runemini4name;

    @Column(name = "runePresentRate2")
    private String runepresentrate2;

    private static final long serialVersionUID = 1L;

    /**
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * @return nickName
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * @param nickname
     */
    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    /**
     * @return heroName
     */
    public String getHeroname() {
        return heroname;
    }

    /**
     * @param heroname
     */
    public void setHeroname(String heroname) {
        this.heroname = heroname == null ? null : heroname.trim();
    }

    /**
     * @return position
     */
    public String getPosition() {
        return position;
    }

    /**
     * @param position
     */
    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    /**
     * @return passiveIcon
     */
    public String getPassiveicon() {
        return passiveicon;
    }

    /**
     * @param passiveicon
     */
    public void setPassiveicon(String passiveicon) {
        this.passiveicon = passiveicon == null ? null : passiveicon.trim();
    }

    /**
     * @return QIcon
     */
    public String getQicon() {
        return qicon;
    }

    /**
     * @param qicon
     */
    public void setQicon(String qicon) {
        this.qicon = qicon == null ? null : qicon.trim();
    }

    /**
     * @return WIcon
     */
    public String getWicon() {
        return wicon;
    }

    /**
     * @param wicon
     */
    public void setWicon(String wicon) {
        this.wicon = wicon == null ? null : wicon.trim();
    }

    /**
     * @return EIcon
     */
    public String getEicon() {
        return eicon;
    }

    /**
     * @param eicon
     */
    public void setEicon(String eicon) {
        this.eicon = eicon == null ? null : eicon.trim();
    }

    /**
     * @return RIcon
     */
    public String getRicon() {
        return ricon;
    }

    /**
     * @param ricon
     */
    public void setRicon(String ricon) {
        this.ricon = ricon == null ? null : ricon.trim();
    }

    /**
     * @return summonerSpell1
     */
    public String getSummonerspell1() {
        return summonerspell1;
    }

    /**
     * @param summonerspell1
     */
    public void setSummonerspell1(String summonerspell1) {
        this.summonerspell1 = summonerspell1 == null ? null : summonerspell1.trim();
    }

    /**
     * @return summonerSpell2
     */
    public String getSummonerspell2() {
        return summonerspell2;
    }

    /**
     * @param summonerspell2
     */
    public void setSummonerspell2(String summonerspell2) {
        this.summonerspell2 = summonerspell2 == null ? null : summonerspell2.trim();
    }

    /**
     * @return summonerSpellPresentRate1
     */
    public String getSummonerspellpresentrate1() {
        return summonerspellpresentrate1;
    }

    /**
     * @param summonerspellpresentrate1
     */
    public void setSummonerspellpresentrate1(String summonerspellpresentrate1) {
        this.summonerspellpresentrate1 = summonerspellpresentrate1 == null ? null : summonerspellpresentrate1.trim();
    }

    /**
     * @return summonerSpell3
     */
    public String getSummonerspell3() {
        return summonerspell3;
    }

    /**
     * @param summonerspell3
     */
    public void setSummonerspell3(String summonerspell3) {
        this.summonerspell3 = summonerspell3 == null ? null : summonerspell3.trim();
    }

    /**
     * @return summonerSpell4
     */
    public String getSummonerspell4() {
        return summonerspell4;
    }

    /**
     * @param summonerspell4
     */
    public void setSummonerspell4(String summonerspell4) {
        this.summonerspell4 = summonerspell4 == null ? null : summonerspell4.trim();
    }

    /**
     * @return summonerSpellPresentRate2
     */
    public String getSummonerspellpresentrate2() {
        return summonerspellpresentrate2;
    }

    /**
     * @param summonerspellpresentrate2
     */
    public void setSummonerspellpresentrate2(String summonerspellpresentrate2) {
        this.summonerspellpresentrate2 = summonerspellpresentrate2 == null ? null : summonerspellpresentrate2.trim();
    }

    /**
     * @return skillFirst
     */
    public String getSkillfirst() {
        return skillfirst;
    }

    /**
     * @param skillfirst
     */
    public void setSkillfirst(String skillfirst) {
        this.skillfirst = skillfirst == null ? null : skillfirst.trim();
    }

    /**
     * @return skillSecond
     */
    public String getSkillsecond() {
        return skillsecond;
    }

    /**
     * @param skillsecond
     */
    public void setSkillsecond(String skillsecond) {
        this.skillsecond = skillsecond == null ? null : skillsecond.trim();
    }

    /**
     * @return skillThird
     */
    public String getSkillthird() {
        return skillthird;
    }

    /**
     * @param skillthird
     */
    public void setSkillthird(String skillthird) {
        this.skillthird = skillthird == null ? null : skillthird.trim();
    }

    /**
     * @return buildInit1
     */
    public String getBuildinit1() {
        return buildinit1;
    }

    /**
     * @param buildinit1
     */
    public void setBuildinit1(String buildinit1) {
        this.buildinit1 = buildinit1 == null ? null : buildinit1.trim();
    }

    /**
     * @return buildInit2
     */
    public String getBuildinit2() {
        return buildinit2;
    }

    /**
     * @param buildinit2
     */
    public void setBuildinit2(String buildinit2) {
        this.buildinit2 = buildinit2 == null ? null : buildinit2.trim();
    }

    /**
     * @return buildInitPresentRate1
     */
    public String getBuildinitpresentrate1() {
        return buildinitpresentrate1;
    }

    /**
     * @param buildinitpresentrate1
     */
    public void setBuildinitpresentrate1(String buildinitpresentrate1) {
        this.buildinitpresentrate1 = buildinitpresentrate1 == null ? null : buildinitpresentrate1.trim();
    }

    /**
     * @return buildInit3
     */
    public String getBuildinit3() {
        return buildinit3;
    }

    /**
     * @param buildinit3
     */
    public void setBuildinit3(String buildinit3) {
        this.buildinit3 = buildinit3 == null ? null : buildinit3.trim();
    }

    /**
     * @return buildInit4
     */
    public String getBuildinit4() {
        return buildinit4;
    }

    /**
     * @param buildinit4
     */
    public void setBuildinit4(String buildinit4) {
        this.buildinit4 = buildinit4 == null ? null : buildinit4.trim();
    }

    /**
     * @return buildInitPresentRate2
     */
    public String getBuildinitpresentrate2() {
        return buildinitpresentrate2;
    }

    /**
     * @param buildinitpresentrate2
     */
    public void setBuildinitpresentrate2(String buildinitpresentrate2) {
        this.buildinitpresentrate2 = buildinitpresentrate2 == null ? null : buildinitpresentrate2.trim();
    }

    /**
     * @return buildRecommend1
     */
    public String getBuildrecommend1() {
        return buildrecommend1;
    }

    /**
     * @param buildrecommend1
     */
    public void setBuildrecommend1(String buildrecommend1) {
        this.buildrecommend1 = buildrecommend1 == null ? null : buildrecommend1.trim();
    }

    /**
     * @return buildRecommend2
     */
    public String getBuildrecommend2() {
        return buildrecommend2;
    }

    /**
     * @param buildrecommend2
     */
    public void setBuildrecommend2(String buildrecommend2) {
        this.buildrecommend2 = buildrecommend2 == null ? null : buildrecommend2.trim();
    }

    /**
     * @return buildRecommend3
     */
    public String getBuildrecommend3() {
        return buildrecommend3;
    }

    /**
     * @param buildrecommend3
     */
    public void setBuildrecommend3(String buildrecommend3) {
        this.buildrecommend3 = buildrecommend3 == null ? null : buildrecommend3.trim();
    }

    /**
     * @return buildRecommendPresentRate1
     */
    public String getBuildrecommendpresentrate1() {
        return buildrecommendpresentrate1;
    }

    /**
     * @param buildrecommendpresentrate1
     */
    public void setBuildrecommendpresentrate1(String buildrecommendpresentrate1) {
        this.buildrecommendpresentrate1 = buildrecommendpresentrate1 == null ? null : buildrecommendpresentrate1.trim();
    }

    /**
     * @return buildRecommend4
     */
    public String getBuildrecommend4() {
        return buildrecommend4;
    }

    /**
     * @param buildrecommend4
     */
    public void setBuildrecommend4(String buildrecommend4) {
        this.buildrecommend4 = buildrecommend4 == null ? null : buildrecommend4.trim();
    }

    /**
     * @return buildRecommend5
     */
    public String getBuildrecommend5() {
        return buildrecommend5;
    }

    /**
     * @param buildrecommend5
     */
    public void setBuildrecommend5(String buildrecommend5) {
        this.buildrecommend5 = buildrecommend5 == null ? null : buildrecommend5.trim();
    }

    /**
     * @return buildRecommend6
     */
    public String getBuildrecommend6() {
        return buildrecommend6;
    }

    /**
     * @param buildrecommend6
     */
    public void setBuildrecommend6(String buildrecommend6) {
        this.buildrecommend6 = buildrecommend6 == null ? null : buildrecommend6.trim();
    }

    /**
     * @return buildRecommendPresentRate2
     */
    public String getBuildrecommendpresentrate2() {
        return buildrecommendpresentrate2;
    }

    /**
     * @param buildrecommendpresentrate2
     */
    public void setBuildrecommendpresentrate2(String buildrecommendpresentrate2) {
        this.buildrecommendpresentrate2 = buildrecommendpresentrate2 == null ? null : buildrecommendpresentrate2.trim();
    }

    /**
     * @return buildRecommend7
     */
    public String getBuildrecommend7() {
        return buildrecommend7;
    }

    /**
     * @param buildrecommend7
     */
    public void setBuildrecommend7(String buildrecommend7) {
        this.buildrecommend7 = buildrecommend7 == null ? null : buildrecommend7.trim();
    }

    /**
     * @return buildRecommend8
     */
    public String getBuildrecommend8() {
        return buildrecommend8;
    }

    /**
     * @param buildrecommend8
     */
    public void setBuildrecommend8(String buildrecommend8) {
        this.buildrecommend8 = buildrecommend8 == null ? null : buildrecommend8.trim();
    }

    /**
     * @return buildRecommend9
     */
    public String getBuildrecommend9() {
        return buildrecommend9;
    }

    /**
     * @param buildrecommend9
     */
    public void setBuildrecommend9(String buildrecommend9) {
        this.buildrecommend9 = buildrecommend9 == null ? null : buildrecommend9.trim();
    }

    /**
     * @return buildRecommendPresentRate3
     */
    public String getBuildrecommendpresentrate3() {
        return buildrecommendpresentrate3;
    }

    /**
     * @param buildrecommendpresentrate3
     */
    public void setBuildrecommendpresentrate3(String buildrecommendpresentrate3) {
        this.buildrecommendpresentrate3 = buildrecommendpresentrate3 == null ? null : buildrecommendpresentrate3.trim();
    }

    /**
     * @return boot1
     */
    public String getBoot1() {
        return boot1;
    }

    /**
     * @param boot1
     */
    public void setBoot1(String boot1) {
        this.boot1 = boot1 == null ? null : boot1.trim();
    }

    /**
     * @return boot2
     */
    public String getBoot2() {
        return boot2;
    }

    /**
     * @param boot2
     */
    public void setBoot2(String boot2) {
        this.boot2 = boot2 == null ? null : boot2.trim();
    }

    /**
     * @return boot3
     */
    public String getBoot3() {
        return boot3;
    }

    /**
     * @param boot3
     */
    public void setBoot3(String boot3) {
        this.boot3 = boot3 == null ? null : boot3.trim();
    }

    /**
     * @return bootPresentRate1
     */
    public String getBootpresentrate1() {
        return bootpresentrate1;
    }

    /**
     * @param bootpresentrate1
     */
    public void setBootpresentrate1(String bootpresentrate1) {
        this.bootpresentrate1 = bootpresentrate1 == null ? null : bootpresentrate1.trim();
    }

    /**
     * @return bootPresentRate2
     */
    public String getBootpresentrate2() {
        return bootpresentrate2;
    }

    /**
     * @param bootpresentrate2
     */
    public void setBootpresentrate2(String bootpresentrate2) {
        this.bootpresentrate2 = bootpresentrate2 == null ? null : bootpresentrate2.trim();
    }

    /**
     * @return bootPresentRate3
     */
    public String getBootpresentrate3() {
        return bootpresentrate3;
    }

    /**
     * @param bootpresentrate3
     */
    public void setBootpresentrate3(String bootpresentrate3) {
        this.bootpresentrate3 = bootpresentrate3 == null ? null : bootpresentrate3.trim();
    }

    /**
     * @return rune1
     */
    public String getRune1() {
        return rune1;
    }

    /**
     * @param rune1
     */
    public void setRune1(String rune1) {
        this.rune1 = rune1 == null ? null : rune1.trim();
    }

    /**
     * @return runeName1
     */
    public String getRunename1() {
        return runename1;
    }

    /**
     * @param runename1
     */
    public void setRunename1(String runename1) {
        this.runename1 = runename1 == null ? null : runename1.trim();
    }

    /**
     * @return rune2
     */
    public String getRune2() {
        return rune2;
    }

    /**
     * @param rune2
     */
    public void setRune2(String rune2) {
        this.rune2 = rune2 == null ? null : rune2.trim();
    }

    /**
     * @return runeName2
     */
    public String getRunename2() {
        return runename2;
    }

    /**
     * @param runename2
     */
    public void setRunename2(String runename2) {
        this.runename2 = runename2 == null ? null : runename2.trim();
    }

    /**
     * @return rune3
     */
    public String getRune3() {
        return rune3;
    }

    /**
     * @param rune3
     */
    public void setRune3(String rune3) {
        this.rune3 = rune3 == null ? null : rune3.trim();
    }

    /**
     * @return runeName3
     */
    public String getRunename3() {
        return runename3;
    }

    /**
     * @param runename3
     */
    public void setRunename3(String runename3) {
        this.runename3 = runename3 == null ? null : runename3.trim();
    }

    /**
     * @return rune4
     */
    public String getRune4() {
        return rune4;
    }

    /**
     * @param rune4
     */
    public void setRune4(String rune4) {
        this.rune4 = rune4 == null ? null : rune4.trim();
    }

    /**
     * @return runeName4
     */
    public String getRunename4() {
        return runename4;
    }

    /**
     * @param runename4
     */
    public void setRunename4(String runename4) {
        this.runename4 = runename4 == null ? null : runename4.trim();
    }

    /**
     * @return rune5
     */
    public String getRune5() {
        return rune5;
    }

    /**
     * @param rune5
     */
    public void setRune5(String rune5) {
        this.rune5 = rune5 == null ? null : rune5.trim();
    }

    /**
     * @return runeName5
     */
    public String getRunename5() {
        return runename5;
    }

    /**
     * @param runename5
     */
    public void setRunename5(String runename5) {
        this.runename5 = runename5 == null ? null : runename5.trim();
    }

    /**
     * @return rune6
     */
    public String getRune6() {
        return rune6;
    }

    /**
     * @param rune6
     */
    public void setRune6(String rune6) {
        this.rune6 = rune6 == null ? null : rune6.trim();
    }

    /**
     * @return runeName6
     */
    public String getRunename6() {
        return runename6;
    }

    /**
     * @param runename6
     */
    public void setRunename6(String runename6) {
        this.runename6 = runename6 == null ? null : runename6.trim();
    }

    /**
     * @return runeMini3
     */
    public String getRunemini3() {
        return runemini3;
    }

    /**
     * @param runemini3
     */
    public void setRunemini3(String runemini3) {
        this.runemini3 = runemini3 == null ? null : runemini3.trim();
    }

    /**
     * @return runeMiniName3
     */
    public String getRunemininame3() {
        return runemininame3;
    }

    /**
     * @param runemininame3
     */
    public void setRunemininame3(String runemininame3) {
        this.runemininame3 = runemininame3 == null ? null : runemininame3.trim();
    }

    /**
     * @return runeMini2
     */
    public String getRunemini2() {
        return runemini2;
    }

    /**
     * @param runemini2
     */
    public void setRunemini2(String runemini2) {
        this.runemini2 = runemini2 == null ? null : runemini2.trim();
    }

    /**
     * @return runeMiniName2
     */
    public String getRunemininame2() {
        return runemininame2;
    }

    /**
     * @param runemininame2
     */
    public void setRunemininame2(String runemininame2) {
        this.runemininame2 = runemininame2 == null ? null : runemininame2.trim();
    }

    /**
     * @return runeMini1
     */
    public String getRunemini1() {
        return runemini1;
    }

    /**
     * @param runemini1
     */
    public void setRunemini1(String runemini1) {
        this.runemini1 = runemini1 == null ? null : runemini1.trim();
    }

    /**
     * @return runeMiniName1
     */
    public String getRunemininame1() {
        return runemininame1;
    }

    /**
     * @param runemininame1
     */
    public void setRunemininame1(String runemininame1) {
        this.runemininame1 = runemininame1 == null ? null : runemininame1.trim();
    }

    /**
     * @return runePresentRate1
     */
    public String getRunepresentrate1() {
        return runepresentrate1;
    }

    /**
     * @param runepresentrate1
     */
    public void setRunepresentrate1(String runepresentrate1) {
        this.runepresentrate1 = runepresentrate1 == null ? null : runepresentrate1.trim();
    }

    /**
     * @return rune7
     */
    public String getRune7() {
        return rune7;
    }

    /**
     * @param rune7
     */
    public void setRune7(String rune7) {
        this.rune7 = rune7 == null ? null : rune7.trim();
    }

    /**
     * @return runeName7
     */
    public String getRunename7() {
        return runename7;
    }

    /**
     * @param runename7
     */
    public void setRunename7(String runename7) {
        this.runename7 = runename7 == null ? null : runename7.trim();
    }

    /**
     * @return rune8
     */
    public String getRune8() {
        return rune8;
    }

    /**
     * @param rune8
     */
    public void setRune8(String rune8) {
        this.rune8 = rune8 == null ? null : rune8.trim();
    }

    /**
     * @return runeName8
     */
    public String getRunename8() {
        return runename8;
    }

    /**
     * @param runename8
     */
    public void setRunename8(String runename8) {
        this.runename8 = runename8 == null ? null : runename8.trim();
    }

    /**
     * @return rune9
     */
    public String getRune9() {
        return rune9;
    }

    /**
     * @param rune9
     */
    public void setRune9(String rune9) {
        this.rune9 = rune9 == null ? null : rune9.trim();
    }

    /**
     * @return runeName9
     */
    public String getRunename9() {
        return runename9;
    }

    /**
     * @param runename9
     */
    public void setRunename9(String runename9) {
        this.runename9 = runename9 == null ? null : runename9.trim();
    }

    /**
     * @return rune10
     */
    public String getRune10() {
        return rune10;
    }

    /**
     * @param rune10
     */
    public void setRune10(String rune10) {
        this.rune10 = rune10 == null ? null : rune10.trim();
    }

    /**
     * @return runeName10
     */
    public String getRunename10() {
        return runename10;
    }

    /**
     * @param runename10
     */
    public void setRunename10(String runename10) {
        this.runename10 = runename10 == null ? null : runename10.trim();
    }

    /**
     * @return rune11
     */
    public String getRune11() {
        return rune11;
    }

    /**
     * @param rune11
     */
    public void setRune11(String rune11) {
        this.rune11 = rune11 == null ? null : rune11.trim();
    }

    /**
     * @return runeName11
     */
    public String getRunename11() {
        return runename11;
    }

    /**
     * @param runename11
     */
    public void setRunename11(String runename11) {
        this.runename11 = runename11 == null ? null : runename11.trim();
    }

    /**
     * @return rune12
     */
    public String getRune12() {
        return rune12;
    }

    /**
     * @param rune12
     */
    public void setRune12(String rune12) {
        this.rune12 = rune12 == null ? null : rune12.trim();
    }

    /**
     * @return runeName12
     */
    public String getRunename12() {
        return runename12;
    }

    /**
     * @param runename12
     */
    public void setRunename12(String runename12) {
        this.runename12 = runename12 == null ? null : runename12.trim();
    }

    /**
     * @return runeMini6
     */
    public String getRunemini6() {
        return runemini6;
    }

    /**
     * @param runemini6
     */
    public void setRunemini6(String runemini6) {
        this.runemini6 = runemini6 == null ? null : runemini6.trim();
    }

    /**
     * @return runeMini6Name
     */
    public String getRunemini6name() {
        return runemini6name;
    }

    /**
     * @param runemini6name
     */
    public void setRunemini6name(String runemini6name) {
        this.runemini6name = runemini6name == null ? null : runemini6name.trim();
    }

    /**
     * @return runeMini5
     */
    public String getRunemini5() {
        return runemini5;
    }

    /**
     * @param runemini5
     */
    public void setRunemini5(String runemini5) {
        this.runemini5 = runemini5 == null ? null : runemini5.trim();
    }

    /**
     * @return runeMini5Name
     */
    public String getRunemini5name() {
        return runemini5name;
    }

    /**
     * @param runemini5name
     */
    public void setRunemini5name(String runemini5name) {
        this.runemini5name = runemini5name == null ? null : runemini5name.trim();
    }

    /**
     * @return runeMini4
     */
    public String getRunemini4() {
        return runemini4;
    }

    /**
     * @param runemini4
     */
    public void setRunemini4(String runemini4) {
        this.runemini4 = runemini4 == null ? null : runemini4.trim();
    }

    /**
     * @return runeMini4Name
     */
    public String getRunemini4name() {
        return runemini4name;
    }

    /**
     * @param runemini4name
     */
    public void setRunemini4name(String runemini4name) {
        this.runemini4name = runemini4name == null ? null : runemini4name.trim();
    }

    /**
     * @return runePresentRate2
     */
    public String getRunepresentrate2() {
        return runepresentrate2;
    }

    /**
     * @param runepresentrate2
     */
    public void setRunepresentrate2(String runepresentrate2) {
        this.runepresentrate2 = runepresentrate2 == null ? null : runepresentrate2.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", nickname=").append(nickname);
        sb.append(", heroname=").append(heroname);
        sb.append(", position=").append(position);
        sb.append(", passiveicon=").append(passiveicon);
        sb.append(", qicon=").append(qicon);
        sb.append(", wicon=").append(wicon);
        sb.append(", eicon=").append(eicon);
        sb.append(", ricon=").append(ricon);
        sb.append(", summonerspell1=").append(summonerspell1);
        sb.append(", summonerspell2=").append(summonerspell2);
        sb.append(", summonerspellpresentrate1=").append(summonerspellpresentrate1);
        sb.append(", summonerspell3=").append(summonerspell3);
        sb.append(", summonerspell4=").append(summonerspell4);
        sb.append(", summonerspellpresentrate2=").append(summonerspellpresentrate2);
        sb.append(", skillfirst=").append(skillfirst);
        sb.append(", skillsecond=").append(skillsecond);
        sb.append(", skillthird=").append(skillthird);
        sb.append(", buildinit1=").append(buildinit1);
        sb.append(", buildinit2=").append(buildinit2);
        sb.append(", buildinitpresentrate1=").append(buildinitpresentrate1);
        sb.append(", buildinit3=").append(buildinit3);
        sb.append(", buildinit4=").append(buildinit4);
        sb.append(", buildinitpresentrate2=").append(buildinitpresentrate2);
        sb.append(", buildrecommend1=").append(buildrecommend1);
        sb.append(", buildrecommend2=").append(buildrecommend2);
        sb.append(", buildrecommend3=").append(buildrecommend3);
        sb.append(", buildrecommendpresentrate1=").append(buildrecommendpresentrate1);
        sb.append(", buildrecommend4=").append(buildrecommend4);
        sb.append(", buildrecommend5=").append(buildrecommend5);
        sb.append(", buildrecommend6=").append(buildrecommend6);
        sb.append(", buildrecommendpresentrate2=").append(buildrecommendpresentrate2);
        sb.append(", buildrecommend7=").append(buildrecommend7);
        sb.append(", buildrecommend8=").append(buildrecommend8);
        sb.append(", buildrecommend9=").append(buildrecommend9);
        sb.append(", buildrecommendpresentrate3=").append(buildrecommendpresentrate3);
        sb.append(", boot1=").append(boot1);
        sb.append(", boot2=").append(boot2);
        sb.append(", boot3=").append(boot3);
        sb.append(", bootpresentrate1=").append(bootpresentrate1);
        sb.append(", bootpresentrate2=").append(bootpresentrate2);
        sb.append(", bootpresentrate3=").append(bootpresentrate3);
        sb.append(", rune1=").append(rune1);
        sb.append(", runename1=").append(runename1);
        sb.append(", rune2=").append(rune2);
        sb.append(", runename2=").append(runename2);
        sb.append(", rune3=").append(rune3);
        sb.append(", runename3=").append(runename3);
        sb.append(", rune4=").append(rune4);
        sb.append(", runename4=").append(runename4);
        sb.append(", rune5=").append(rune5);
        sb.append(", runename5=").append(runename5);
        sb.append(", rune6=").append(rune6);
        sb.append(", runename6=").append(runename6);
        sb.append(", runemini3=").append(runemini3);
        sb.append(", runemininame3=").append(runemininame3);
        sb.append(", runemini2=").append(runemini2);
        sb.append(", runemininame2=").append(runemininame2);
        sb.append(", runemini1=").append(runemini1);
        sb.append(", runemininame1=").append(runemininame1);
        sb.append(", runepresentrate1=").append(runepresentrate1);
        sb.append(", rune7=").append(rune7);
        sb.append(", runename7=").append(runename7);
        sb.append(", rune8=").append(rune8);
        sb.append(", runename8=").append(runename8);
        sb.append(", rune9=").append(rune9);
        sb.append(", runename9=").append(runename9);
        sb.append(", rune10=").append(rune10);
        sb.append(", runename10=").append(runename10);
        sb.append(", rune11=").append(rune11);
        sb.append(", runename11=").append(runename11);
        sb.append(", rune12=").append(rune12);
        sb.append(", runename12=").append(runename12);
        sb.append(", runemini6=").append(runemini6);
        sb.append(", runemini6name=").append(runemini6name);
        sb.append(", runemini5=").append(runemini5);
        sb.append(", runemini5name=").append(runemini5name);
        sb.append(", runemini4=").append(runemini4);
        sb.append(", runemini4name=").append(runemini4name);
        sb.append(", runepresentrate2=").append(runepresentrate2);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}