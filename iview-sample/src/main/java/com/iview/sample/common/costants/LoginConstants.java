package com.iview.sample.common.costants;

/**
 * <p>Title: LoginConstants. </p>
 * <p>Description 登录常量 </p>
 * <p>Company: http://www.koolearn.com </p>
 * @author wangzhe01@koolearn-inc.com
 * @date 2019-08-21 10:31
 */
public class LoginConstants {

    public static final String PROJECT_NAME = "PROJECT";

    public static final String H = ":";

    /**
     * 秘钥盐，有效期一天
     */
    public static final String TOKEN_KEY = PROJECT_NAME + H + "TOKEN_KEY";

    public static final String USER_COOKIE = PROJECT_NAME + "_USER_COOKIE";

    public static final String USER_THREAD_LOCAL_MAP_NAME = "loginUserInfo";
}
