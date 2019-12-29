package com.js.iview.dto;

import com.js.iview.model.User;
import lombok.*;

/**
 * 用户查询DTO
 */
@Data
@ToString(callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
public class UserDto extends User {

    /**
     * 页码
     */
    private Integer page;

    /**
     * 页数
     */
    private Integer size;
}
