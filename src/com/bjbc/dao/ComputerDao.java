package com.bjbc.dao;

import java.util.List;

import com.bjbjc.entity.Computer;



public interface ComputerDao {
	public List<Computer> query(String sql,Object...objects);
	public int opration(String sql,Object...objects);
}
