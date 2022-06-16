package com.xiaoACE.ssm.service;

import com.xiaoACE.ssm.entity.model.User;

import java.util.List;
import java.util.Map;

public interface UserService {

    //登录
    User queryUserByLoginNameAndPassword(Map<String,Object> map);
    //列出全部用户
    List<User> listAllUser();

    //增加用户
    int insert(User user);

    //删除用户
    int delete(long userId);

    //查找用户
    User find(long userId);

    //更新用户
    int update(User user);

}

