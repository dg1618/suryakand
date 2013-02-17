package com.surya.tutorials.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.surya.tutorials.db.dao.UserDao;
import com.surya.tutorials.domain.User;

@Controller
public class CreateUserController {
	private String viewName;
	private String createSucessView;
	private UserDao userDao;

	@RequestMapping(value = {"/user/create"} , method = RequestMethod.POST)
	public ModelAndView createUser(@ModelAttribute("userModel") User userModel) {
		userDao.createUser(userModel);
		ModelAndView mv = new ModelAndView(createSucessView);
		return mv;
	}

	@RequestMapping(value = {"/user/create"} , method = RequestMethod.GET)
	public ModelAndView createUserForm(User userModel) {
		ModelAndView mv = new ModelAndView(viewName);
		mv.addObject("userModel", new User());
		return mv;
	}

	@RequestMapping(value = {"/user/isavailbale"} , method = RequestMethod.POST)
	public @ResponseBody Boolean createUser(@RequestParam("username") String username){
		User user = userDao.getUserByUserName(username);
		if(user != null) {
			return Boolean.FALSE;
		}
		return Boolean.TRUE;
	}

	public String getViewName() {
		return viewName;
	}

	public void setViewName(String viewName) {
		this.viewName = viewName;
	}

	public String getCreateSucessView() {
		return createSucessView;
	}

	public void setCreateSucessView(String createSucessView) {
		this.createSucessView = createSucessView;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
