package com.offcn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offcn.bean.Categroy;
import com.offcn.dao.CategroyDao;
@Service
public class CategroyServiceImpl implements CategroyService {

	@Autowired
	private CategroyDao categroyDao;
	@Override
	public List<Categroy> queryCategroyList() {
		
	List<Categroy> cs=	categroyDao.selectCategroyList();
		
		
		return cs;
	}

}
