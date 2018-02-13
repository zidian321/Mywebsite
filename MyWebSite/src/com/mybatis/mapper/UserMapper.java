package com.mybatis.mapper;

import com.mybatis.domain.User;
import org.springframework.dao.DataAccessException;
public interface UserMapper {
   
	
	void save(User user)throws DataAccessException;
}
