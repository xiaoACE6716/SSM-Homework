package com.xiaoACE.ssm.service;

import com.xiaoACE.ssm.entity.model.Role;

import java.util.List;

public interface RoleService {

    //列出全部角色
    List<Role> listAllRole();

    //增加角色
    int insert(Role role);

    //删除角色
    int delete(long roleId);

    //查找角色
    Role find(long roleId);

    //更新角色
    int update(Role role);


}
