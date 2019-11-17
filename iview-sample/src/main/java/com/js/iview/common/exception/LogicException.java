package com.js.iview.common.exception;

import lombok.Getter;

/**
 * 业务异常类
 */
@Getter
public class LogicException extends RuntimeException {
    /**
     * 异常信息
     */
    private String errorMsg;
    /**
     * 错误码
     */
    private String code;

    private LogicException(String errorMsg) {
        super(errorMsg);
        this.code = errorMsg.substring(0, 5);
        this.errorMsg = errorMsg.substring(6);
    }

    /**
     * 抛出逻辑异常
     *
     * @param errorMsg
     * @return
     */
    public static LogicException le(String errorMsg) {
        return new LogicException(errorMsg);
    }
}
