package com.feiyu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.feiyu.pojo.User;
import com.feiyu.service.UserService;
import com.feiyu.service.impl.UserServiceImpl;
import com.feiyu.utlis.MD5Utils;

@Controller
public class UserController {
	UserService us = new UserServiceImpl();

	@RequestMapping("/*.action")
	public ModelAndView checkUser(@RequestParam(value = "upass", required = false) String upass, String sign,
			HttpSession session, HttpServletRequest request) throws Exception {
		ModelAndView mView = new ModelAndView();
		String uname = request.getParameter("uname");
		if ("1".equals(sign)) {
			List<User> users = us.getUsers();
			mView.addObject("users", users);
			User user = new User();
			mView.addObject("user", user);
			mView.setViewName("admin/admin_list.jsp");
		} else {
			User user = new User();
			user.setUname(uname);
			user.setUpass(upass);
			boolean result = us.checkUser(user);
			if (result) {
				session.setAttribute("uname", uname);
				mView.setViewName("index.jsp");
			} else {
				mView.addObject("temp", "登录失败");
				mView.setViewName("login.jsp");
			}
		}
		return mView;
	}

	@RequestMapping("/delete.action")
	public String deleteUser(User user, Model model) {
		us.deleteById(user);
		List<User> users = us.getUsers();
		model.addAttribute("users", users);
		User user2 = new User();
		model.addAttribute("result", "delete");
		model.addAttribute("user", user);
		return "/admin/admin_list.jsp";

	}

	@RequestMapping("/query.action")
	public String queryUser(User user, Model model) {
		User u = us.getUserById(user);
		model.addAttribute("user", u);
		return "/admin/admin_modi.jsp";
	}

	@RequestMapping("/update.action")
	public String updateUser(User user, Model model) {
		us.updateUserDate(user);
		List<User> users = us.getUsers();
		model.addAttribute("users", users);
		User user2 = new User();
		model.addAttribute("result", "update");
		model.addAttribute("user", user);
		return "/admin/admin_list.jsp";
	}

	@RequestMapping("/add.action")
	public String addUser(User user, Model model) {
		us.addUser(user);
		List<User> users = us.getUsers();
		model.addAttribute("users", users);
		User user2 = new User();
		model.addAttribute("result", "add");
		model.addAttribute("user", user2);
		return "/admin/admin_list.jsp";
	}

	@RequestMapping("/search.action")
	public String search(@RequestParam(value = "search") String search, Model model) {
		if (search == null || "".equals(search)) {
			List<User> users = us.getUsers();
			model.addAttribute("users", users);
			User user2 = new User();
			model.addAttribute("user", user2);
			return "/admin/admin_list.jsp";
		} else {
			List<User> users = us.searchGetUsers(search);
			model.addAttribute("users", users);
			User user2 = new User();
			model.addAttribute("user", user2);
			return "/admin/admin_list.jsp";
		}

	}

}
