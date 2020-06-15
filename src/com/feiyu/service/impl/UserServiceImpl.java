package com.feiyu.service.impl;

import java.io.IOException;
import java.util.List;


import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.feiyu.mapper.UserMapper;
import com.feiyu.pojo.User;
import com.feiyu.service.UserService;

public class UserServiceImpl implements UserService{
	public static SqlSessionFactory factory;
	static {
		try {
			factory =new SqlSessionFactoryBuilder().build(
					Resources.getResourceAsReader("mybatis/SqlMapConfig.xml"));
		} catch (IOException e) {
			// TODO: handle exception
		}
		
		
	}
	@Override
	public boolean checkUser(User user) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		boolean flag =false;
		User user1 = mapper.getUser(user);
		if (user1!=null) {
			flag = true ;
		}
		return flag;
	}
	@Override
	public List<User> getUsers() {
		SqlSession session = factory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		return mapper.getUsers();
	}
	@Override
	public void deleteById(User user) {
	
		SqlSession session = factory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		mapper.deleteById(user);
		session.commit();
	}
	@Override
	public void updateUserDate(User user) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		mapper.updateUserDate(user);
		session.commit();
	}
	@Override
	public User getUserById(User user) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		User user2 = mapper.getUserById(user);
		return user2;
	}
	@Override
	public void addUser(User user) {
		SqlSession session = factory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		mapper.insertUser(user);
		session.commit();
	}
	
	@Override
	public List<User> searchGetUsers(String name) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		return mapper.searchGetUsers(name);
	}
}
