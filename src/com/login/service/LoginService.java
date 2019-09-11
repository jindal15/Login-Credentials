package com.login.service;

import com.login.dao.UserDao;

public class LoginService {
	public boolean validateLogin(String uname,String password) throws Exception {
		// TODO Auto-generated method stub
		UserDao dao=new UserDao();
		return dao.getData(uname, password);
	}
}	
