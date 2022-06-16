package com.xiaoACE.ssm.web.controller;

import com.xiaoACE.ssm.commons.utils.Contants;
import com.xiaoACE.ssm.commons.utils.ReturnObject;
import com.xiaoACE.ssm.entity.model.User;
import com.xiaoACE.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;


    @RequestMapping("/toLogin.do")
    public String toLogin(){
        return "login/login";
    }

    @RequestMapping("/login.do")
    public @ResponseBody Object login(String loginName, String password, HttpSession httpSession){
        //将用户名与密码存入map
        Map<String,Object> map = new HashMap<>();
        map.put("loginName",loginName);
        map.put("password",password);
        //调用service层的方法，查询用户
        User user = userService.queryUserByLoginNameAndPassword(map);
        //根据查询结果，生成响应信息
        ReturnObject returnObject = new ReturnObject();

        if (user == null){
            //登陆失败,用户名或密码错误甚至用户不存在
            returnObject.setCode(Contants.RETURN_OBJECT_CODE_FAIL);
            returnObject.setMessage("登陆失败,用户名或密码错误");
        }else{//用户存在，判断账户状态
            if (user.getStatus() == "1"){
                //登录失败，账号已被停用
                returnObject.setCode(Contants.RETURN_OBJECT_CODE_FAIL);
                returnObject.setMessage("登陆失败,账号已被停用");
            }else{
                //登录成功
                returnObject.setCode(Contants.RETURN_OBJECT_CODE_SUCCESS);
                returnObject.setMessage("登陆成功");

                //把user存入session里，以便前端取用
                httpSession.setAttribute(Contants.SESSION_USER,user);

            }
        }
        return returnObject;
    }

    //登录完跳转用
    @RequestMapping("/toIndex.do")
    public String toIndex(){
        return "/index/index";
    }
}
