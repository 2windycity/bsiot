package iotbs.lzj.controller;

import java.io.IOException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import iotbs.lzj.bean.Admin;
import iotbs.lzj.service.AdminService;

@Controller
public class adminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/admin/loginindex")
	public String showlogin(){
		return "login";
	}
	@RequestMapping("/showindex")
	public String showindex(){
		return "index";
	}
	@RequestMapping("/admin/login")
	public String login(HttpSession session,Admin admin) throws IOException{
		Admin exitAdmin=adminService.selectAdminByUserName(admin.getUsername());
		if(exitAdmin==null){
			
			return "用户名或密码错误！";
		}
		if(!admin.getPassword().equals(exitAdmin.getPassword())){
			
			return "用户名或密码错误！";
		}
		session.setAttribute("admin", admin);
		return "redirect:/showindex";
	}
	
	
}
