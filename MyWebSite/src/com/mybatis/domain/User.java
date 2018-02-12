
package com.mybatis.domain;

import java.io.Serializable;

/**
 * 官方网站
 * www.fkjava.org
 * www.facejava.org
 * 学习交流论坛
 * www.crazyit.org
 *
 * @author 肖文吉
 * 
 * CREATE TABLE `tb_user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(18) DEFAULT NULL,
  `sex` CHAR(2) DEFAULT NULL,
  `age` INT(11) DEFAULT NULL,
  PRIMARY KEY  (`id`)
)
 */
public class User implements Serializable{
	// 用户标识
	private Integer id;
	// 用户姓名
	private String name;
	// 用户密碼
	private String password;
	// 用户年龄
	
	// 无参数构造器
	public User() {
		super();
	}
	// 有参数构造器
	public User( String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}
	 // setter和getter方法
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPasswordd() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + "]";
	}
	
	

}
