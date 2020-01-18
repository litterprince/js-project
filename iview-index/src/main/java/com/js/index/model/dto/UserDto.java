package com.js.index.model.dto;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 用户查询DTO
 */
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class UserDto implements Serializable {

    private static final long serialVersionUID = -2998034352778896678L;

    private String name;

    private Integer age;

    private String address;

    private String startDate;

    private String endDate;

    /**
     * 页码
     */
    private Integer page;

    /**
     * 页数
     */
    private Integer size;
}
