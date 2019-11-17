package com.js.iview.common.interceptor;

import com.js.iview.common.costants.LoginConstants;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * <p>Title: LoginInterceptor. </p>
 * <p>Description 系统登录拦截器 </p>
 * <p>Company: http://www.koolearn.com </p>
 * @author wangzhe01@koolearn-inc.com
 * @date 2019-08-21 12:04
 */
@Slf4j
public class LoginInterceptor implements HandlerInterceptor {

    private static final String LOGIN = "/login";

    private static final String TS = "/t-s.jsp";

    private static final String RESOURCES = "/resources";

    private static final String FAVICON = "favicon.ico";

    /*@Resource
    private LoginService loginService;*/

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        String url = request.getRequestURL().toString();

        // 静态资源
        if (url.contains(RESOURCES) || url.contains(FAVICON)) {
            return true;
        }
        // 登录跳过拦截
        if (url.contains(LOGIN) || url.contains(TS)) {
            return true;
        }

        // 获取Cookie
        String token = null;
        Cookie[] cookies = request.getCookies();
        if (cookies != null && cookies.length > 0) {
            for (Cookie cookie : cookies) {
                if (LoginConstants.USER_COOKIE.equals(cookie.getName())) {
                    token = cookie.getValue();
                    break;
                }
            }
        }

        // 存放ThreadLocal用户信息
        if (null != token) {
            /*User user = loginService.getUserInfoByToken(token);
            if (null != user) {
                request.setAttribute("userName", user.getUser());
                ThreadLocalMap.put("loginUserInfo", user);
                return true;
            }*/
        }

        // 如未登录、跳转至登录页面
        String path = request.getContextPath();
        String redirectPath = path + "/toolbox/login/redirect";
        response.sendRedirect(redirectPath);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o,
                           ModelAndView modelAndView) throws Exception {
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                Object o, Exception e) throws Exception {
    }
}
