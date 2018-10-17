package iotbs.lzj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import iotbs.lzj.bean.Admin;
import iotbs.lzj.bean.AjaxMessage;
import iotbs.lzj.dao.AdminMapper;
import iotbs.lzj.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	@Override
	public Admin selectAdminByUserName(String username) {
		Admin adminlist = adminMapper.selectAdminByUserName(username);
		return adminlist;
	}

}
