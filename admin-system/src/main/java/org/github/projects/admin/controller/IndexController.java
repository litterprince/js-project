package org.github.projects.admin.controller;

import org.github.projects.admin.dto.QueryUserDto;
import org.github.projects.admin.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/")
public class IndexController {

    @RequestMapping(value = {"", "/"})
    public String index() {
        return "pages/main";
    }

    @RequestMapping(value = "/user/list", method = RequestMethod.POST)
    @ResponseBody
    public List list(@RequestBody QueryUserDto queryUserDto){
        System.out.println(queryUserDto.getPage());

        User jeff = User.builder().name("jeff").age(24).address("China").build();
        User tom = User.builder().name("tom").age(18).address("USA").build();
        List<User> list = new ArrayList<>();
        list.add(jeff);
        list.add(tom);
        return list;
    }

    @RequestMapping("/user/index")
    public String userIndex(){
        return "pages/user";
    }
}
