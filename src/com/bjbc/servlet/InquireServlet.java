package com.bjbc.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbc.service.ComputerService;
import com.bjbc.service_impl.ComputerServiceImpl;
import com.bjbjc.entity.Computer;

public class InquireServlet extends HttpServlet{
	private ComputerService cs = new ComputerServiceImpl();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String s = req.getParameter("");
		try {
			List<Computer> c = cs.inquire(s);
			System.out.println(s);
			if (c != null) {
				req.getSession().setAttribute("c", c);
				req.getRequestDispatcher("inquire.jsp").forward(req, resp);
			} else {
				resp.sendRedirect("main.jsp");
			}
			
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}


























