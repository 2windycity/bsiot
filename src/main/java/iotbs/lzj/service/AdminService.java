package iotbs.lzj.service;

import java.util.List;

import org.springframework.stereotype.Service;

import iotbs.lzj.bean.Admin;
import iotbs.lzj.bean.AjaxMessage;


public interface AdminService {
	/**
	 * 根据前台传进来的admin信息查询数据库是否存在此admin
	 * @param admin
	 * @return
	 */
	Admin selectAdminByUserName(String username);
}
