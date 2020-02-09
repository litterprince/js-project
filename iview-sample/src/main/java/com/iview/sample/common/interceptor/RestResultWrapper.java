package com.iview.sample.common.interceptor;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.core.MethodParameter;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;

import com.iview.sample.common.annotation.RestSkip;
import com.iview.sample.common.response.RestResult;

/**
 * rest接口返回处理
 */
@RestControllerAdvice
public class RestResultWrapper implements ResponseBodyAdvice<Object> {

    /**
     * 设置默认跳过处理的rest接口类
     */
    private static final List<Class<?>> SKIP_CLASS_LIST = new ArrayList<>(2);

    static {
        // Swagger
        /*SKIP_CLASS_LIST.add(ApiResourceController.class);
        SKIP_CLASS_LIST.add(Swagger2Controller.class);*/
    }

    /**
     * 可指定针对某些返回值的类型才进行rest风格的封装
     *
     * @param returnType    返回值类型
     * @param converterType converterType
     * @return true/false
     */
    @Override
    public boolean supports(MethodParameter returnType, Class<? extends HttpMessageConverter<?>> converterType) {
        if (SKIP_CLASS_LIST.contains(returnType.getDeclaringClass())) {
            return false;
        }
        Method returnTypeMethod = returnType.getMethod();
        if (returnTypeMethod != null) {
            return !returnTypeMethod.isAnnotationPresent(RestSkip.class);
        }
        return true;
    }

    /**
     * 封装正常返回的数据
     *
     * @param body body
     * @param returnType returnType
     * @param selectedContentType selectedContentType
     * @param selectedConverterType selectedConverterType
     * @param request 请求
     * @param response 响应
     * @return 返回给客户端的数据
     */
    @Override
    public Object beforeBodyWrite(Object body, MethodParameter returnType, MediaType selectedContentType,
            Class<? extends HttpMessageConverter<?>> selectedConverterType, ServerHttpRequest request,
            ServerHttpResponse response) {
        if (MediaType.IMAGE_JPEG.getType().equalsIgnoreCase(selectedContentType.getType())) {
            return body;
        }
        if (body instanceof RestResult) {
            return body;
        }
        return RestResult.builder().success(true).code("0").data(body).errorMessage(null).currentTime(new Date())
                .build();
    }
}
