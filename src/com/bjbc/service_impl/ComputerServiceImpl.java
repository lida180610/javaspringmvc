package com.bjbc.service_impl;

import java.util.ArrayList;
import java.util.List;

import com.bjbc.service.ComputerService;
import com.bjbc.tool.Factory;
import com.bjbjc.entity.Computer;
import com.svgteam.util.PowerfulDao;

public class ComputerServiceImpl implements ComputerService{
	public static final Integer pageSize = 10;
	public static Integer maxPages = -1;	//总页数
	public static Integer maxRecords = -1;	//最大记录数
	private PowerfulDao dao = Factory.getDao();
	{
		dao.init("demo","root","root");
		dao.open();
	}
	@Override
	public List<Computer> getAllComputer() throws Exception {
		String sql = "select * from computer";
		return dao.query(sql, new Computer());
	}

	@Override
	public List<Computer> getComputerByCurrPage(int currPage) throws Exception {		//当前页数
		List<Computer> oldList = getAllComputer();
		maxRecords = oldList.size();
		if (maxRecords % pageSize == 0) 
			maxPages = maxRecords/pageSize;
		else 
			maxPages = maxRecords/pageSize + 1;
		List<Computer> newList = new ArrayList<>();
		for (int i = (currPage - 1) * pageSize; i < currPage * pageSize; i++) {
			try {
				newList.add(oldList.get(i));
			} catch (Exception e) {
				return newList;
			}
		}						
		return newList;
	}
	
	public Integer getMaxPages() {
		return maxPages;
	}

	@Override
	public boolean add(Computer c) throws Exception {
		String sql = "insert into computer values(0,?,?,?,?)";
		return dao.operation(sql, c.getName(),c.getPrice(),c.getPicture(),c.getNumber())>0?true:false;
	}

	@Override
	public boolean delete(Computer c) throws Exception {
		String sql = "delete from computer where id = ?";
		return dao.operation(sql, c.getId())>0?true:false;
	}

	@Override
	public List inquire(String c) throws Exception {
		String sql = "select * from computer where name like concat('%',?,'%')";
		return dao.query(sql,c);
	}

	
	
	











}





