package com.iview.sample.controller;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.common.collect.Lists;
import com.iview.sample.dto.UserDto;
import com.iview.sample.model.User;

/**
 * 用户信息
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    @RequestMapping(value = "index")
    public String index() {
        return "user/index";
    }

    @RequestMapping(value = "getUserList", method = RequestMethod.POST)
    @ResponseBody
    public List<User> getUserList(@RequestParam("userDto") UserDto userDto) {
        // todo: 返回前台分页查询结果
        return getData();
    }

    private List<User> getData() {
        List<User> list = Lists.newArrayList();
        list.add(User.builder().id(1).name("jeff").password("1").age(18).createTime(new Date()).build());
        list.add(User.builder().id(2).name("tom").password("2").age(18).createTime(new Date()).build());
        list.add(User.builder().id(3).name("james").password("3").age(18).createTime(new Date()).build());
        return list;
    }
}
