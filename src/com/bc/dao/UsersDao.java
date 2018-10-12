package com.bc.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bc.dao.mapper.UserMapper;
import com.bc.frame.Dao;
import com.bc.vo.UsersVO;

@Repository("udao")
public class UsersDao implements Dao<UsersVO,String>{

	@Autowired
	UserMapper mapper;
	
	@Override
	public void insert(UsersVO t) throws Exception {
		mapper.insert(t);
	}

	@Override
	public void update(UsersVO t) throws Exception {
		mapper.update(t);
	}

	@Override
	public void delete(String v) throws Exception {
		mapper.delete(v);
	}

	@Override
	public UsersVO select(String v) throws Exception {
		return mapper.select(v);
	}

	@Override
	public ArrayList<UsersVO> selectall() throws Exception {
		return mapper.selectall();
	}

}
