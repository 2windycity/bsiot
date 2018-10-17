package iotbs.lzj.dao;

import java.util.List;

import iotbs.lzj.bean.Admin;
import iotbs.lzj.bean.AjaxMessage;

public interface AdminMapper {
	Admin selectAdminByUserName(String username);
}
