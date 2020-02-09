package com.iview.sample.common.interceptor;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iview.sample.common.costants.ErrorMessage;
import com.iview.sample.common.exception.LogicException;
import com.iview.sample.common.response.RestResult;

import lombok.extern.slf4j.Slf4j;

/**
 * 业务统一异常处理
 */
@Slf4j
public class GlobalExceptionHandler {

    @ExceptionHandler(value = Exception.class)
    @ResponseBody
    public Object logicExceptionHandler(HttpServletRequest request, Exception e, HttpServletResponse response) {
        // 系统级异常，错误码固定为-1，提示语固定为系统繁忙，请稍后再试
        RestResult result = RestResult.builder().success(false).code("-1").data(e.getMessage())
                .errorMessage(ErrorMessage.SYSTEM_EXCEPTION).currentTime(new Date()).build();
        // 如果是业务逻辑异常，返回具体的错误码与提示信息
        if (e instanceof LogicException) {
            LogicException logicException = (LogicException) e;
            result.setCode(logicException.getCode());
            result.setErrorMessage(logicException.getErrorMsg());
        } else {
            // 对系统级异常进行日志记录
            log.error("系统异常:" + e.getMessage(), e);
        }
        return result;
    }
}
