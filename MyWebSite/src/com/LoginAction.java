package com;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mybatis.domain.User;
import com.opensymphony.xwork2.ActionSupport;
import com.util.sqlSessionFactoryUtil;

public class LoginAction extends ActionSupport {
	private String username;
	private String userpass;

	public String execute() throws IOException {//
		SqlSessionFactory sqlf=sqlSessionFactoryUtil.getSqlSessionFactory();
		SqlSession session = sqlf.openSession();
		// 创建User对象
		User user = new User(username, userpass);
		// 插入数据
		session.insert("org.fkit.mapper.UserMapper.save", user);
		// 提交事务
		session.commit();
		// 关闭Session
		session.close();
			return SUCCESS;

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpass() {
		return userpass;
	}

	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
}
