package com.haha.common.controller;

import com.haha.common.mapper.*;
import com.haha.common.pojo.Hero;
import com.haha.common.pojo.HeroInfo;
import com.haha.common.pojo.Rank;
import com.haha.common.service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
@SuppressWarnings("all")
public class HeroController {
    @Autowired
    HeroService heroService;
    @Autowired
    BottomRankMapper bottomRankMapper;
    @Autowired
    JungleRankMapper jungleRankMapper;
    @Autowired
    MiddleRankMapper middleRankMapper;
    @Autowired
    SupportRankMapper supportRankMapper;
    @Autowired
    TopRankMapper topRankMapper;
    @Autowired
    HeroInfoMapper heroInfoMapper;

    @RequestMapping("/hero")
    public List<Hero> hero() {
        return heroService.findAll();
    }

    @RequestMapping("/top")
    public List<Rank> top() {
        return topRankMapper.findAll();
    }

    @RequestMapping("/jungle")
    public List<Rank> jungle() {
        return jungleRankMapper.findAll();
    }

    @RequestMapping("/middle")
    public List<Rank> middle() {
        return middleRankMapper.findAll();
    }

    @RequestMapping("/bottom")
    public List<Rank> bottom() {
        return bottomRankMapper.findAll();
    }

    @RequestMapping("/support")
    public List<Rank> support() {
        return supportRankMapper.findAll();
    }

    @RequestMapping("/heroinfo")
    public HeroInfo heroInfo(@RequestParam("name") String name){
        return heroInfoMapper.findHeroInfoByName(name);
    }
}
