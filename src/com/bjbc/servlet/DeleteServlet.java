package com.bjbc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbc.service.ComputerService;
import com.bjbc.service_impl.ComputerServiceImpl;
import com.bjbjc.entity.Computer;

public class DeleteServlet extends HttpServlet{
	private ComputerService cs = new ComputerServiceImpl();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer a_id = Integer.valueOf(req.getParameter("id"));
		Computer com = new Computer();
		
		com.setId(a_id);
		
		System.out.println(com.getId());
		try {
			if (cs.delete(com) == true) {
				resp.sendRedirect("main.jsp");
			} else {
				req.getRequestDispatcher("deleteshop.jsp").forward(req, resp);
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


























