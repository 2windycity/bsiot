package iotbs.lzj.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import iotbs.lzj.bean.AjaxMessage;
import iotbs.lzj.bean.User;
import iotbs.lzj.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/user/list")
	public String ListIndexUser(@RequestParam(defaultValue="1") Integer page,Model model){
		PageHelper.startPage(page,8);
		List<User> userlist = userService.ListIndexUser();
		PageInfo<User> pageInfo=new PageInfo<User>(userlist);
		model.addAttribute("userlist", userlist);
		model.addAttribute("pageInfo", pageInfo);
		return "user_list";
	}
	
	@RequestMapping("/user/listbuildid")
	@ResponseBody
	public Map<String,Object> listBuildId(){
		List<Integer> listBuildId = userService.listBuildId();
		Map<String,Object> map=new HashMap<>();
		map.put("list", listBuildId);
		return map;
	}
	
	@RequestMapping("/user/listUserByBid")
	@ResponseBody
	public User selectUserByBid(Integer userId){
		
		if(userId==null||userId==0){
			return null;
		}
		User user=userService.selectUserByBid(userId);
		return user;
	}
	
	@RequestMapping("/user/adduser")
	@ResponseBody
	public int insertUser(@RequestBody User user){
		
		int row=userService.insertUser(user);
		if(row>0){
			
			return 200;
		}else{
			
			return -1;
		}
		
	}
	
	@RequestMapping("/user/deleteuser")
	@ResponseBody
	public AjaxMessage deleteUserById(Integer userId){
		AjaxMessage ajax=new AjaxMessage();
		int row=userService.deleteUserById(userId);
		if(row>0){
			ajax.setStatus("删除成功！");
			return ajax;
		}else{
			ajax.setStatus("删除失败！");
			return ajax;
		}
	}
	
	@RequestMapping("/user/updateuser")
	@ResponseBody
	public AjaxMessage deleteUserById(@RequestBody User user){
		AjaxMessage ajax=new AjaxMessage();
		int row = userService.updateUserById(user);
		if(row>0){
			ajax.setStatus("保存修改成功！");
			return ajax;
		}else{
			ajax.setStatus("保存修改失败！");
			return ajax;
		}
	}
}
