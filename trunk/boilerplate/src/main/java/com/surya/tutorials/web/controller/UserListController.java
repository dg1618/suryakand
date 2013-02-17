package com.surya.tutorials.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.surya.tutorials.db.dao.UserDao;
import com.surya.tutorials.domain.User;

@Controller
public class UserListController {
	private String viewName;
	private UserDao userDao;

	@RequestMapping("/user/all")
	public ModelAndView showUserList() {
		List<User> userList = userDao.getAllUsers();

		ModelAndView mv = new ModelAndView(viewName);
		mv.addObject("userList", userList);

		return mv;
	}

	public String getViewName() {
		return viewName;
	}

	public void setViewName(String viewName) {
		this.viewName = viewName;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
