package com.haha.common.mapper;

import com.haha.common.pojo.Rank;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface SupportRankMapper {

    List<Rank> findAll();

}
