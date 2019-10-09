package com.cg.service;

import java.util.List;

import com.cg.bean.LoginBean;
import com.cg.bean.SearchBean;
import com.cg.bean.UserBean;
import com.cg.dao.SearchDao;
import com.cg.dao.SearchDaoImpl;

public class SearchServiceImpl implements SearchService {
	private SearchDao dao;
	
	

	public SearchServiceImpl() {
		dao = new SearchDaoImpl();
	}

	@Override
	public UserBean validate(LoginBean login) {
		// TODO Auto-generated method stub
		return dao.authenticate(login);
	}

	@Override
	public boolean save(UserBean user) {
		// TODO Auto-generated method stub
		return dao.persist(user);
	}

	@Override
	public List<UserBean> search(SearchBean search) {
		// TODO Auto-generated method stub
		return dao.search(search);
	}

}
