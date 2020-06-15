package com.feiyu.service;

import java.util.List;

import com.feiyu.pojo.User;

public interface UserService {
	boolean checkUser(User user);
	List<User> getUsers();
	void deleteById(User user);
	void updateUserDate(User user);
	User getUserById(User user);
	void addUser(User user);
	List<User> searchGetUsers(String name);
}
