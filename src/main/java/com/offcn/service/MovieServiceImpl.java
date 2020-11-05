package com.offcn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.offcn.bean.ConditionBean;
import com.offcn.bean.Movie;
import com.offcn.bean.MoviePerformer;
import com.offcn.dao.MovieDao;
import com.offcn.dao.MoviePerformerDao;
@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieDao movieDao;
	@Autowired
	private MoviePerformerDao moviePerformerDao;
	@Override
	public PageInfo<Movie> queryMovieList(int currentPage,ConditionBean bean) {
		
		PageHelper.startPage(currentPage,24);
		List<Movie> movies= movieDao.selectMovieList(bean);
		PageInfo<Movie> pageInfo=new PageInfo<>(movies,10);
		List<Movie> list = pageInfo.getList();
		for(Movie mo:list) {
			Integer id = mo.getId();
		List<MoviePerformer> pers=	moviePerformerDao.selectPerformerByMovieId(id);
		mo.setMperformers(pers);
		}
		
		return pageInfo;
	}
	
}
