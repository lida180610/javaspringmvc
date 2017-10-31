package com.bjbc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbc.service.UserService;
import com.bjbc.service_impl.UserServiceImpl;
import com.bjbjc.entity.User;

public class RegisterServlet extends HttpServlet{
	private UserService us = new UserServiceImpl();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		User u = new User();
		
		u.setUsername(username);
		u.setU_password(password);
		
		System.out.println(u.getUsername()+u.getU_password());
		if (us.register(u)==true) {
			resp.sendRedirect("main.jsp");
			
		} else {
			
			req.getRequestDispatcher("register.jsp").forward(req, resp);
		}
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req, resp);
	}
}



























