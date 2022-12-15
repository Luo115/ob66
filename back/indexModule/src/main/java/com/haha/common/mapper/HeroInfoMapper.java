package com.haha.common.mapper;

import com.haha.common.pojo.HeroInfo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HeroInfoMapper  {
    HeroInfo findHeroInfoByName(String nickName);
}