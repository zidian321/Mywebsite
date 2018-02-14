package com.action;

import java.io.IOException;
import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.annotations.JSON;

import com.mybatis.domain.User;
import com.mybatis.mapper.UserMapper;
import com.opensymphony.xwork2.ActionSupport;
import com.util.sqlSessionFactoryUtil;

public class SignAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private ArrayList<String> list;
    private String status;
    private String message;

	public String execute() throws IOException {//
		SqlSessionFactory sqlf=sqlSessionFactoryUtil.getSqlSessionFactory();
		SqlSession session = sqlf.openSession();
		// 创建User对象
		User user = new User(username, password);
		// 插入数据
		System.out.println("HHHHHHHHHHHHHHHHHHHHHHHH");
		try{
		UserMapper um=session.getMapper(UserMapper.class);
		um.save(user);
        message=username+"注册成功";
        status="1";
		session.commit();
		// 关闭Session
		session.close();
        return SUCCESS;
		}catch (Exception e) {
			e.printStackTrace();
			message=username+"用户已存在";
			status="2";
			return SUCCESS;
		}


	}
	@JSON(serialize=false)
	public String getUsername() {
		return username;
	}
	@JSON(serialize=false)
	public void setUsername(String username) {
		this.username = username;
	}
	@JSON(serialize=false)
	public String getPassword() {
		return password;
	}
	@JSON(serialize=false)
	public void setPassword(String userpass) {
		this.password = userpass;
	}
    public ArrayList<String> getList() {
        return list;
    }
    public void setList(ArrayList<String> list) {
        this.list = list;
    }
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
