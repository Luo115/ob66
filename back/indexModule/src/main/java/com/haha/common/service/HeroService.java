package com.haha.common.service;

import com.haha.common.mapper.HeroMapper;
import com.haha.common.pojo.Hero;
import org.springframework.stereotype.Service;

import java.util.List;


public interface HeroService {

    List<Hero> findAll();


}
