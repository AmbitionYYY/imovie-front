package com.offcn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.offcn.bean.Categroy;
import com.offcn.bean.ConditionBean;
import com.offcn.service.CategroyService;
import com.offcn.service.MovieService;

@Controller
@RequestMapping("main")
public class MainController {
	
	//����
	@Autowired
	private CategroyService categroyService;
	@Autowired
	private MovieService movieService;
	
	
	//������ת����ҳ��������indexҳ��
	@RequestMapping("main-show")
	public String mainShow(@RequestParam(defaultValue="1")int currentPage,ConditionBean bean,Model model) {
		
		System.out.println(bean);
	List<Categroy> categroys=categroyService.queryCategroyList();
	
	PageInfo pageInfo= movieService.queryMovieList(currentPage,bean);
	
	
	//׼������
	model.addAttribute("categroys", categroys);
	model.addAttribute("pageInfo", pageInfo);
	model.addAttribute("conbean", bean);
		return "/WEB-INF/views/main/main.jsp";
		
	}

}
