package com.dao;

import com.may.Users;

public class UserDao {
	public boolean usersLogin(Users users) {
		if ("admin".equals(users.getUsername()) && "admin".equals(users.getPassword())) {
			return true;
		} else {
			return false;
		}
	}
}
