package iotbs.lzj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import iotbs.lzj.bean.User;
import iotbs.lzj.dao.UserMapper;
import iotbs.lzj.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	
	@Override
	public List<User> ListIndexUser() {
		
		List<User> userlist=userMapper.ListIndexUser();
		
		return userlist;
	}

	@Override
	public List<Integer> listBuildId() {
		List<Integer> listBuildId = userMapper.listBuildId();
		return listBuildId;
	}

	@Override
	public User selectUserByBid(Integer userid) {
		return userMapper.selectUserByBid(userid);
		
	}

	@Override
	public int insertUser(User user) {
		return userMapper.insertUser(user);
	}

	@Override
	public int deleteUserById(Integer userId) {
		return userMapper.deleteUserById(userId);
	}

	@Override
	public int updateUserById(User user) {
		return userMapper.updateUserById(user);
	}

}
