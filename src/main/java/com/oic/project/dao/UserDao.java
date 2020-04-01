package com.oic.project.dao;

import com.oic.project.models.User;

public interface UserDao {
	
	int addUser(User u);
	public boolean userLogin(String un, String pswd);
}
