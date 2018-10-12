package com.bc.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bc.frame.Service;
import com.bc.vo.UsersVO;

@Controller
public class MainController {
	@Resource(name="uservice")
	Service<UsersVO, String> service;

	@RequestMapping("/main.bc")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/getname.bc")
	public ModelAndView qna() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		String name = null;
		try {
			name = service.get("id01").getName();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.addObject("centerpage",name);
		return mv;
	}
}
