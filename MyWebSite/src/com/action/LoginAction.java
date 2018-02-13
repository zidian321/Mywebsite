package com.action;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

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

public class LoginAction extends ActionSupport {
	private String username;
	private String userpass;

	public String execute() throws IOException {//
		String message ="注册成功";
		SqlSessionFactory sqlf=sqlSessionFactoryUtil.getSqlSessionFactory();
		SqlSession session = sqlf.openSession();
		// 创建User对象
		User user = new User(username, userpass);
		// 插入数据
		try{
		UserMapper um=session.getMapper(UserMapper.class);
		um.save(user);
		}catch (Exception e) {
			System.out.println("用户名重复");
			message="用户名重复";
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("message", message);
			return ERROR;
		}
		// 提交事务
		session.commit();
		// 关闭Session
		session.close();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("message", message);
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
