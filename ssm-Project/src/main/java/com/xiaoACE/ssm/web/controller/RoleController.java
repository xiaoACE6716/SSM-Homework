package com.xiaoACE.ssm.web.controller;

import com.xiaoACE.ssm.entity.model.Role;
import com.xiaoACE.ssm.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class RoleController {

    @Autowired
    private RoleService roleService;

    @RequestMapping(value = "listAllRole.do")
    public String listAllRole(Model model){
        List<Role> roles = roleService.listAllRole();
        model.addAttribute("roles",roles);
        return "/index/role/role";
    }

    @RequestMapping(value = "toAddRole.do")
    public String toAddRole(){
        return "/index/role/addRole";
    }

    @RequestMapping(value = "addRole.do",method = RequestMethod.POST)
    public String addRole(Role role){
        roleService.insert(role);
        return "redirect:listAllRole.do";
    }

    @RequestMapping(value = "deleteRole.do")
    public String delete(long roleId){
        roleService.delete(roleId);
        return "redirect:listAllRole.do";
    }

    @RequestMapping(value = "toUpdateRole.do")
    public String toUpdate(int roleId,Model model){
        Role role = roleService.find(roleId);
        model.addAttribute(role);
        return "/index/role/updateRole";
    }

    @RequestMapping(value = "updateRole.do")
    public String update(Role role,long roleId){
        roleService.update(role);
        return "redirect:listAllRole.do";
    }


}
