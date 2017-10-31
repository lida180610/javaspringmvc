package com.bjbc.service_impl;

import com.bjbc.dao.UserDao;
import com.bjbc.service.UserService;
import com.bjbjc.dao_impl.UserDaoImpl;
import com.bjbjc.entity.User;

public class UserServiceImpl implements UserService{
	private UserDao dao = new UserDaoImpl();

	@Override
	public User login(User u) {
		return dao.query("select * from user where username = ?and u_password = ?", u.getUsername(),u.getU_password()).size()>0?dao.query("select * from user where username = ? and u_password = ?", u.getUsername(),u.getU_password()).get(0):null;
	}

	@Override
	public boolean register(User u) {
		
		String sql = "insert into user values(0,?,?)";
		return dao.opration(sql, u.getUsername(),u.getU_password())>0?true:false;
	}

	@Override
	public boolean update(User u) {
		String sql = "update user set u_password = ? where username = ?";
		return dao.opration(sql, u.getU_password(),u.getUsername())>0?true:false;
	}
	
	

}































