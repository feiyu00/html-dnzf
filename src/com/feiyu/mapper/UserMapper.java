package com.feiyu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.feiyu.pojo.User;

public interface UserMapper {
	@Select("select * from test where uname =#{uname} and upass=#{upass}")
	User getUser(User user);
	@Select("select * from test")
	List<User> getUsers();
	@Delete("delete from test where id=#{id}")
	void deleteById(User user);
	@Update("update test set name=#{name}, uname=#{uname},upass=#{upass},email=#{email},tel=#{tel},rol=#{rol},date=#{date} where id=#{id}")
	void updateUserDate(User user);
	@Select("select * from test where id=#{id}")
	User getUserById(User user);
	@Insert("insert into test(name,uname,upass,tel,email,date,rol) values(#{name},#{uname},#{upass},#{tel},#{email},#{date},#{rol})")
	void insertUser(User user);
	@Select("select * from test where name=#{name}")
	List<User> searchGetUsers(String name);
	
}
