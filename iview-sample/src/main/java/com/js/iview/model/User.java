package com.js.iview.model;

import lombok.*;

import java.util.Date;

@Data
@ToString(callSuper = false)
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private Integer id;
    private String name;
    private String password;
    private Integer age;
    private Date createTime;
}
