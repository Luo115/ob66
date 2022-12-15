package com.haha.common.service;

import com.haha.common.mapper.HeroMapper;
import com.haha.common.pojo.Hero;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HeroServiceImpl implements HeroService{

    @Autowired
    HeroMapper heroMapper;

    @Override
    public List<Hero> findAll() {
        return heroMapper.findAll();
    }
}
