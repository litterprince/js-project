package com.js.iview.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping(value = { "", "/" })
    public String index() {
        return "index";
    }

}
