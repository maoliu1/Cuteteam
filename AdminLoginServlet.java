package com.demo.servlet.manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet-管理员登录
 * @author shao
 */
public class AdminLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取request数据
		String adminName = request.getParameter("adminName");
		String password = request.getParameter("password");
		
		// 执行业务逻辑
		if(adminName.equalsIgnoreCase("管理员") && password.equalsIgnoreCase("admin")) {
			// 跳转
			request.getRequestDispatcher("/manager/manager.jsp").forward(request, response);
		} else {
			request.setAttribute("message", "管理员用户名和密码不对");
			request.getRequestDispatcher("/message.jsp").forward(request, response);
			return;
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
