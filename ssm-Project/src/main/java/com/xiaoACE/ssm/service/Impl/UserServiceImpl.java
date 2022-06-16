package com.xiaoACE.ssm.service.Impl;

import com.xiaoACE.ssm.entity.mapper.UserMapper;
import com.xiaoACE.ssm.entity.model.User;
import com.xiaoACE.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User queryUserByLoginNameAndPassword(Map<String, Object> map) {
        return userMapper.selectUserByLoginNameAndPassword(map);
    }

    @Override
    public List<User> listAllUser() {
        return userMapper.listAllUser();
    }

    @Override
    public int insert(User user) {
        return userMapper.insertSelective(user);
    }

    @Override
    public int delete(long userId) {
        return userMapper.deleteByPrimaryKey(userId);
    }

    @Override
    public User find(long userId) {
        return userMapper.selectByPrimaryKey(userId);
    }

    @Override
    public int update(User user) {
        return userMapper.updateByPrimaryKeySelective(user);
    }
}
