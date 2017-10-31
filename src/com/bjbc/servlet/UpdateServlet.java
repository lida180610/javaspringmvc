package com.bjbc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbc.service.UserService;
import com.bjbc.service_impl.UserServiceImpl;
import com.bjbjc.entity.User;

public class UpdateServlet extends HttpServlet{
	private UserService us = new UserServiceImpl();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Boolean flag = false;
		User u = new User();
		String url = "";
		String uname = "";
		if (req.getParameter("username") != null && !"".equals(req.getParameter("username"))) {
			uname = req.getParameter("username");
			u.setUsername(uname);
		}
		String upassword = "";
		if (req.getParameter("u_password")!=null && !"".equals(req.getParameter("password"))) {
			upassword = req.getParameter("u_password");
			u.setU_password(upassword);
		}
		
		flag = us.update(u);
		System.out.println(flag);
		if (flag) {
			url = "main.jsp";
		} else {
			url = "change.jsp";
		}
		resp.sendRedirect(url);
	}
	
}























