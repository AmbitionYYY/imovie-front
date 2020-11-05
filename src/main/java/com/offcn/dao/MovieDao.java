package com.offcn.dao;

import java.util.List;

import com.offcn.bean.ConditionBean;
import com.offcn.bean.Movie;

public interface MovieDao {

public	List<Movie> selectMovieList(ConditionBean bean);

}
