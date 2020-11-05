package com.offcn.service;

import com.github.pagehelper.PageInfo;
import com.offcn.bean.ConditionBean;
import com.offcn.bean.Movie;

public interface MovieService {

public	PageInfo<Movie> queryMovieList(int currentPage, ConditionBean bean);

}
