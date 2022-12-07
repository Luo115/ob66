package com.haha.util;

import com.haha.mapper.HeroInfoMapper;
import com.haha.pojo.HeroInfo;
import com.haha.pojo.Rank;
import com.haha.mapper.RankMapper;
import io.mybatis.mapper.Mapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

public class MybatisUtil {

    private static SqlSessionFactory sqlSessionFactory;

    static{
        String resource = "mybatis-config.xml";
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream(resource);
        } catch (IOException e) {
            e.printStackTrace();
        }
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
    }

    public static SqlSessionFactory getSqlSessionFactory() throws Exception{
        return sqlSessionFactory;
    }

    public static void insert(Rank rank, Class clazz) throws Exception{
        SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

        try(SqlSession sqlSession = sqlSessionFactory.openSession(true)){
            RankMapper mapper = (RankMapper) sqlSession.getMapper(clazz);
            mapper.insert(rank);
        }
    }

    public static Mapper getMapper(){
        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        return sqlSession.getMapper(HeroInfoMapper.class);
    }


}
