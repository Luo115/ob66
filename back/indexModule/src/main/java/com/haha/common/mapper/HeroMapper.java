package com.haha.common.mapper;

import com.haha.common.pojo.Hero;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface HeroMapper {

    List<Hero> findAll();

}
