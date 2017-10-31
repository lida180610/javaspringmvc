package com.bjbjc.dao_impl;

import java.util.ArrayList;
import java.util.List;

import com.bjbc.dao.ComputerDao;
import com.bjbc.tool.BaseDao;
import com.bjbjc.entity.Computer;
import com.bjbjc.entity.User;

public class ComputerImpl extends BaseDao implements ComputerDao{

	@Override
	public List<Computer> query(String sql, Object... objects) {
		super.open();
		List<Computer> com = new ArrayList<>();
		try {
			super.ps = super.conn.prepareStatement(sql);
			for (int i = 0; i < objects.length; i++) {
				ps.setObject(i+1, objects[i]);
			}
			super.rs = super.ps.executeQuery();
			while (rs.next()) {
				Computer c = new Computer();
				c.setId(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setPrice(rs.getInt(3));
				c.setPicture(rs.getString(4));
				c.setNumber(rs.getInt(5));
				com.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			super.close();
		}
		return com;
	}
		
	

	@Override
	public int opration(String sql, Object... objects) {
		// TODO Auto-generated method stub
		return 0;
	}

}
