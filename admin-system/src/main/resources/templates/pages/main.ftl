<#-- 引入布局指令的命名空间 -->
<#import "../layout/layout.ftl" as layout>
<#import "../layout/vue.script.ftl" as vue>

<#-- 调用布局指令 -->
<@layout.layout>
<#-- 将下面这个main content嵌入到layout指令的nested块中 -->
    <iframe id="mainFrame" name="mainFrame" src="/user/index" class="toolbox-iframe-cls" onload="iFrameHeight()"></iframe>
</@layout.layout>
<@vue.vue>
    <script type="text/javascript" language="javascript">
        function iFrameHeight() {
            // height
            var h = $("#mainFrame").contents().find("body").height() + 30;
            if (h < 500) {
                h = 1600;
            }
            $("#mainFrame").height(h);
            // width
            var w = $("#mainFrame").contents().find("body").width();
            if (w < 800) {
                w = 1300;
            }
            $("#mainFrame").width(w);
        }
    </script>
    <script>
        let app = new Vue({
            el: '#app',
            data: {
                tableData:[

                ],
                isCollapsed: false
            },
            computed: {
                rotateIcon() {
                    return [
                        'menu-icon',
                        this.isCollapsed ? 'rotate-icon' : ''
                    ];
                },
                menuItemClasses() {
                    return [
                        'menu-item',
                        this.isCollapsed ? 'collapsed-menu' : ''
                    ]
                }
            },
            created() {
                this.ctxPath = '/';<#--${ctx}';-->
                this.userName = 'wangzhe';
                <#--'${userName}';-->
                this.userNameAvatar = this.userName.substring(0, 1).toUpperCase();
            },
            methods: {
                getList() {

                },
                goPage(router) {
                    console.log('global router =', this.path);
                    document.getElementById('mainFrame').src = this.ctxPath + router;
                },
                logoutBtn() {
                    top.location = '/toolbox/logout';
                }
            },
            watch: {
                isCollapsed(oldVal, newVal) {
                    console.log('isCollapsed =', this.isCollapsed);
                }
            }
        });
    </script>
</@vue.vue>