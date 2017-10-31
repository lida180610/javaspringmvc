package com.bjbc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjbc.service.UserService;
import com.bjbc.service_impl.UserServiceImpl;
import com.bjbjc.entity.User;

public class LoginServlet extends HttpServlet{
	private UserService service = new UserServiceImpl();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setCharacterEncoding("UTF-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		User u = new User();
		u.setUsername(username);
		u.setU_password(password);
		if (service.login(u) != null) {
			resp.sendRedirect("main.jsp");
			req.getSession().setAttribute("user", u);
		} else {
			req.setAttribute("message", "用户名或密码有误！请重新输入！");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
		PrintWriter out = resp.getWriter();
	}

}







































