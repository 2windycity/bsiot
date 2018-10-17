package iotbs.lzj.service;



import java.util.List;

import iotbs.lzj.bean.User;


public interface UserService{
	/**
	 * 首页首页显示用户信息列表+分页
	 * @return
	 */
	List<User> ListIndexUser();
	/**
	 * ajax回显用户的栋数
	 * @return
	 */
	List<Integer> listBuildId();
	
	/**
	 * ajax回显单个用户信息
	 * @return
	 */
	User selectUserByBid(Integer userid);
	
	/**
	 * 添加用户信息
	 * @param user
	 * @return
	 */
	int insertUser(User user);
	
	/**
	 * 根据用户ID删除用户信息
	 * @param userId
	 * @return
	 */
	int deleteUserById(Integer userId);
	
	/**
	 * 根据ID修改用户信息
	 * @param user
	 * @return
	 */
	int updateUserById(User user);
}
