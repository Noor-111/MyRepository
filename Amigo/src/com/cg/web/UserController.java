package com.cg.web;
import com.cg.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cg.bean.LoginBean;
import com.cg.bean.UserBean;
import com.cg.service.SearchService;
import com.cg.service.SearchServiceImpl;


@WebServlet(name = "User", urlPatterns = { "/User.do" })
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SearchService service;
	
	@Override
	public void init() throws ServletException {
		service = new SearchServiceImpl();
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String referer = request.getHeader("referer");
		if(referer.contains("home")){
			//request from homepage or login
			LoginBean login = new LoginBean();
			//Reading request params and setting into bean
			login.setUserid(request.getParameter("userid"));
			login.setPassword(request.getParameter("password"));
			UserBean user = service.validate(login);
			if(user!=null){
				HttpSession session = request.getSession();
				session.setAttribute("USER", user.getName());
				//login successful.. show search page
				response.sendRedirect("search.jsp");
			}else{
				//Login failed.. show home page
				response.sendRedirect("home.jsp?invalid=yes");
			}
			
		}else{
			//request from registration page
			UserBean user = new UserBean();
			// Reading request params and setting into bean
			user.setName(request.getParameter("name"));
			user.setUserid(request.getParameter("userid"));
			user.setPassword(request.getParameter("password"));
			user.setAge(Integer.parseInt(request.getParameter("age")));
			user.setGender(request.getParameter("gender"));
			user.setCity(request.getParameter("city"));
			user.setEmail(request.getParameter("email"));
			
			if(service.save(user)){
				//user registered successfully
				response.sendRedirect("home.jsp");
				
			}else{
				//user reg failed
				response.sendRedirect("register.jsp");
			}
			
			
		}
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//delegate the request to doGet service method
		doGet(request,response);
	}

}
