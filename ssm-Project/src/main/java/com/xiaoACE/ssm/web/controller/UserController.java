package com.xiaoACE.ssm.web.controller;

import com.xiaoACE.ssm.entity.model.User;
import com.xiaoACE.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("listAllUser.do")
    public String listAllUser(Model model){

        List<User> users = userService.listAllUser();
        //通过model对象传出users数据到user.jsp
        model.addAttribute("users",users);
        return "/index/user/user";
    }

    @RequestMapping(value = "toAddUser.do")
    public String toAddUser(){
        return "/index/user/addUser";
    }

    @RequestMapping(value = "addUser.do",method = RequestMethod.POST)
    public String addUser(User newUser){
        newUser.setDelFlag("0");
        newUser.setStatus("0");
        newUser.setUserType("0");
        userService.insert(newUser);
        return "redirect:listAllUser.do";
    }

    @RequestMapping(value = "deleteUser.do")
    public String delete(long userId){
        userService.delete(userId);
        return "redirect:listAllUser.do";
    }

    @RequestMapping(value = "toUpdateUser.do")
    public String toUpdate(int userId,Model model){
        User user = userService.find(userId);
        model.addAttribute(user);
        return "/index/user/updateUser";
    }

    @RequestMapping(value = "updateUser.do")
    public String update(User user,long userId){
        userService.update(user);
        return "redirect:listAllUser.do";
    }

}
