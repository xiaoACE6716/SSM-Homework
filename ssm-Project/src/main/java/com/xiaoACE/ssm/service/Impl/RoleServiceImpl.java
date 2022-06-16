package com.xiaoACE.ssm.service.Impl;

import com.xiaoACE.ssm.entity.mapper.RoleMapper;
import com.xiaoACE.ssm.entity.model.Role;
import com.xiaoACE.ssm.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("roleService")
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> listAllRole() {
        return roleMapper.listAllRole();
    }

    @Override
    public int insert(Role role) {
        return roleMapper.insertSelective(role);
    }

    @Override
    public int delete(long roleId) {
        return roleMapper.deleteByPrimaryKey(roleId);
    }

    @Override
    public Role find(long roleId) {
        return  roleMapper.selectByPrimaryKey(roleId);
    }

    @Override
    public int update(Role role) {
        return roleMapper.updateByPrimaryKeySelective(role);
    }



}
