package com.js.iview.common.threadlocal;

import java.util.HashMap;
import java.util.Map;

/**
 * <p>Title: ThreadLocalMap. </p>
 * <p>Description 线程自身携带变量 </p>
 * <p>Company: http://www.koolearn.com </p>
 * @author wangzhe01@koolearn-inc.com
 * @date 2019-08-20 17:23
 */
public class ThreadLocalMap {

    protected final static ThreadLocal<Map<String, Object>> threadContext = new MapThreadLocal();

    private ThreadLocalMap() {
    };

    public static void put(String key, Object value) {
        getContextMap().put(key, value);
    }

    public static Object remove(String key) {
        return getContextMap().remove(key);
    }

    public static Object get(String key) {
        return getContextMap().get(key);
    }

    private static class MapThreadLocal extends ThreadLocal<Map<String, Object>> {

        @Override
        protected Map<String, Object> initialValue() {
            return new HashMap<String, Object>() {

                private static final long serialVersionUID = -7035547808410436561L;

                @Override
                public Object put(String key, Object value) {
                    return super.put(key, value);
                }
            };
        }
    }

    /**
     * 取得thread context Map的实例。
     *
     * @return thread context Map的实例
     */
    protected static Map<String, Object> getContextMap() {
        return threadContext.get();
    }

    /**
     * 清理线程所有被hold住的对象。以便重用
     */
    public static void reset() {
        getContextMap().clear();
    }
}
