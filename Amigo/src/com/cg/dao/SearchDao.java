package com.cg.dao;



import java.util.List;

import com.cg.bean.LoginBean;
import com.cg.bean.SearchBean;
import com.cg.bean.UserBean;

public interface SearchDao {
	String add = "insert into users values (?, ?, ?, ?, ?, ?, ?)";
	String authenticate = "select * from users where userid = ?";
	String search = "select * from users where gender = ? and city = ? and age between ? and ?";
	
	UserBean authenticate(LoginBean login);
	boolean persist(UserBean user);
	List<UserBean> search(SearchBean search);

}
