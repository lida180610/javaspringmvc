package com.bjbc.service;

import java.util.List;

import com.bjbjc.entity.Computer;
public interface ComputerService {
	public List<Computer> getAllComputer() throws Exception;
	public List<Computer> getComputerByCurrPage(int currPage)throws Exception;
	public Integer getMaxPages();
	public boolean add(Computer c)throws Exception;
	public boolean delete(Computer c)throws Exception;
	public List inquire(String c) throws Exception;
}
