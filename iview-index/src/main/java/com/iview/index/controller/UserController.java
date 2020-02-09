package com.iview.index.controller;

import java.util.Date;
import java.util.List;

import com.iview.index.common.ResultData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.google.common.collect.Lists;
import com.iview.index.model.dto.UserDto;
import com.iview.index.model.po.User;

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @GetMapping(value = "/index")
    public String index() {
        return "user/index";
    }

    @PostMapping(value = "/getUserList")
    @ResponseBody
    public ResultData getUserList(@RequestBody UserDto userDto) {
        List<User> data = getData();
        ResultData<List> result = new ResultData<List>();
        result.setCode(0);
        result.setData(data);
        return result;
    }

    private List<User> getData() {
        List<User> list = Lists.newArrayList();
        list.add(User.builder().id(1).name("jeff").password("1").age(19).createTime(new Date()).build());
        list.add(User.builder().id(2).name("tom").password("2").age(18).createTime(new Date()).build());
        list.add(User.builder().id(3).name("james").password("3").age(18).createTime(new Date()).build());
        return list;
    }

}
