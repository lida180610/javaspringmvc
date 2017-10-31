package com.bjbc.dao;

import java.util.List;

import com.bjbjc.entity.User;

public interface UserDao {
	public List<User> query(String sql,Object...objects);
	public int opration(String sql,Object...objects);

}
