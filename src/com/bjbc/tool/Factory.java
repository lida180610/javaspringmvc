package com.bjbc.tool;

import com.svgteam.util.PowerfulDao;

public class Factory {
	private static PowerfulDao dao;
	public static PowerfulDao getDao() {
		if (dao != null) {
			return dao;
		} else {
			dao = new PowerfulDao();
			return dao;
		}
	}
}
