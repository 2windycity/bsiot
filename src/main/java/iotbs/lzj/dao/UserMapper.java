package iotbs.lzj.dao;

import java.util.List;

import iotbs.lzj.bean.User;

public interface UserMapper {
	List<User> ListIndexUser();
	List<Integer> listBuildId();
	User selectUserByBid(Integer userid);
	int insertUser(User user);
	int deleteUserById(Integer userId);
	int updateUserById(User user);
}
