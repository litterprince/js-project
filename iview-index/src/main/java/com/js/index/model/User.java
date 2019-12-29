package com.js.index.model;

import java.io.Serializable;
import java.util.Date;

import lombok.*;

@Data
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class User implements Serializable {

    private static final long serialVersionUID = -9168324843490347880L;

    private Integer id;

    private String name;

    private String password;

    private Integer age;

    private String address;

    private Date createTime;
}
