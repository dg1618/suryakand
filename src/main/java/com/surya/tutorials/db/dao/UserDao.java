package com.surya.tutorials.db.dao;

import java.util.List;

import com.surya.tutorials.domain.User;

public interface UserDao {
	public List<User> getAllUsers();
	public User getUserByUserName(String userName);
	public void createUser(User user);
}
