package com.bjbc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbc.service.ComputerService;
import com.bjbc.service_impl.ComputerServiceImpl;

public class ComputerServlet extends HttpServlet{
	private ComputerService service = new ComputerServiceImpl();
	Integer currPage = 1;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(req.getParameter("currPage"));
		if (req.getParameter("currPage") != null&&Integer.parseInt(req.getParameter("currPage"))>0) {
			this.currPage = Integer.parseInt(req.getParameter("currPage"));
		}
		if(Integer.parseInt(req.getParameter("currPage"))>service.getMaxPages())
			this.currPage=service.getMaxPages();
		try {
			req.setAttribute("maxPages", service.getMaxPages());
			req.setAttribute("Computer", service.getComputerByCurrPage(this.currPage));
			req.setAttribute("currPage", this.currPage);
			req.getRequestDispatcher("Computers.jsp").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}






















