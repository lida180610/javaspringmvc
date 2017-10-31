package com.bjbjc.dao_impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bjbc.dao.UserDao;
import com.bjbc.tool.BaseDao;
import com.bjbjc.entity.User;

public class UserDaoImpl extends BaseDao implements UserDao{

	@Override
	public List<User> query(String sql, Object... objects) {
		super.open();
		List<User> users = new ArrayList<>();
		try {
			super.ps = super.conn.prepareStatement(sql);
			for (int i = 0; i < objects.length; i++) {
				ps.setObject(i+1, objects[i]);
			}
			super.rs = super.ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getInt(1));
				u.setUsername(rs.getString(2));
				u.setU_password(rs.getString(3));
				users.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			super.close();
		}
		
		return users;
	}

	@Override
	public int opration(String sql, Object... objects) {
		// TODO Auto-generated method stub
		open();
		int rows = -1;
		try {
			ps = conn.prepareStatement(sql);
			for (int i = 0; i < objects.length; i++) {
				ps.setObject(i+1,objects[i] );
			}
			rows = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return rows;
	}

}


































