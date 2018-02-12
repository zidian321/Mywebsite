package com.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class sqlSessionFactoryUtil {
    //首先创建静态成员变量sqlSessionFactory，静态变量被所有的对象所共享。
    public static SqlSessionFactory sqlSessionFactory = null;
    public static SqlSessionFactory getSqlSessionFactory() {
        //如果sqlSessionFactory没有被创建就读取全局配置文件，假如已经被创建过了，就使用已经存在的sqlsessionfactory。
        //这样就有了单例模式的效果
        if(sqlSessionFactory==null){
            
            try {
            	InputStream inputStream = Resources.getResourceAsStream("mybatis-config.xml");
                sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return sqlSessionFactory;
    }
}