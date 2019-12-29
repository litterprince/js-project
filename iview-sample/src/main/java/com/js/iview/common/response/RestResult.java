package com.js.iview.common.response;

import lombok.*;

import java.sql.Timestamp;
import java.util.Date;

@Data
@ToString(callSuper = false)
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RestResult<T> {

    /**
     * 请求是否成功（这个字段不需要，可以不加）
     */
    private boolean success;

    /**
     * 成功或者失败的code错误码
     * 0：成功 -1：失败
     */
    private String code;

    /**
     * 成功时返回的数据，失败时返回具体的异常信息
     */
    private T data;

    /**
     * 请求失败返回的提示信息，给前端进行页面展示的信息
     */
    private Object errorMessage;

    /**
     * 服务器当前时间（添加该字段的原因是便于查找定位请求时间，因为实际开发过程中服务器时间可能跟本地时间不一致，加上这个时间戳便于日后定位）
     */
    private Date currentTime;
}
