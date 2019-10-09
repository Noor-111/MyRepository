package com.cg.service;

import java.util.List;

import com.cg.bean.LoginBean;
import com.cg.bean.SearchBean;
import com.cg.bean.UserBean;

public interface SearchService {
	UserBean validate(LoginBean login);
	boolean save(UserBean user);
	List<UserBean> search(SearchBean search);

}
