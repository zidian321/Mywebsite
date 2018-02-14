package com.action;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.struts2.ServletActionContext;
import org.springframework.dao.DataAccessException;

import com.mybatis.domain.User;
import com.mybatis.mapper.UserMapper;
import com.opensymphony.xwork2.ActionSupport;
import com.util.sqlSessionFactoryUtil;

public class SignAction extends ActionSupport {
	private String username;
	private String password;

	public String execute() throws IOException {//
		String message ="注册成功";
		SqlSessionFactory sqlf=sqlSessionFactoryUtil.getSqlSessionFactory();
		SqlSession session = sqlf.openSession();
		// 创建User对象
		User user = new User(username, password);
		// 插入数据
		System.out.println("HHHHHHHHHHHHHHHHHHHHHHHH");
		try{
		UserMapper um=session.getMapper(UserMapper.class);
		um.save(user);
		HttpServletResponse response = ServletActionContext.getResponse();
		 response.getWriter().write("1");    //将数据返回前台ajax
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("用户名重复");
		}
		// 提交事务
		session.commit();
		// 关闭Session
		session.close();
		return null;

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String userpass) {
		this.password = userpass;
	}
}
