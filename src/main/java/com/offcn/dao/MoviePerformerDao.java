package com.offcn.dao;

import java.util.List;

import com.offcn.bean.MoviePerformer;

public interface MoviePerformerDao {

public	List<MoviePerformer> selectPerformerByMovieId(Integer id);

}
