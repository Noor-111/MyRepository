package com.cg.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cg.bean.SearchBean;
import com.cg.bean.UserBean;
import com.cg.service.SearchService;
import com.cg.service.SearchServiceImpl;


@WebServlet("/Search.do")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private SearchService service;

	
	@Override
	public void init() throws ServletException {
		service = new SearchServiceImpl();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SearchBean search = new SearchBean();
		search.setAgeFrom(Integer.parseInt(request.getParameter("ageFrom")));
		search.setAgeTo(Integer.parseInt(request.getParameter("ageTo")));
		search.setGender(request.getParameter("gender"));
		search.setCity(request.getParameter("city"));
		
		List<UserBean> users = service.search(search);
		
		request.setAttribute("USERS", users);
		getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
