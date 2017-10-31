package com.bjbc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbc.service.ComputerService;
import com.bjbc.service_impl.ComputerServiceImpl;
import com.bjbjc.entity.Computer;

public class AddServlet extends HttpServlet{
	private ComputerService cs = new ComputerServiceImpl();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String aname = req.getParameter("name");
		Integer aprice = Integer.valueOf(req.getParameter("price"));
		String apicture = req.getParameter("picture");
		Integer anumber = Integer.valueOf(req.getParameter("number"));
		Computer com = new Computer();
		
		com.setName(aname);
		com.setPrice(aprice);
		com.setPicture(apicture);
		com.setNumber(anumber);
		
		System.out.println(com.getName()+com.getPrice()+com.getPicture()+com.getNumber());
		try {
			if (cs.add(com) == true) {
				resp.sendRedirect("main.jsp");
			} else {
				req.getRequestDispatcher("addshop.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
