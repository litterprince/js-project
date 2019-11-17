package com.js.iview.common.annotation;

import java.lang.annotation.*;

/**
 * 是否被Rest扫面拦截器跳过
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.CLASS)
@Documented
public @interface RestSkip {

}
