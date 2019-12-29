<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <#include "layout/style.ftl">
    <#include "layout/js.ftl">
</head>
<body>
<div id="app" class="layout">
    <Layout>
        <Header>
            <i-menu mode="horizontal" theme="dark" active-name="1">
                <div class="layout-logo"></div>
                <div class="layout-nav">
                    <menu-item name="1">
                        <Icon type="ios-navigate"></Icon>
                        Item 1
                    </menu-item>
                    <menu-item name="2">
                        <Icon type="ios-keypad"></Icon>
                        Item 2
                    </menu-item>
                    <menu-item name="3">
                        <Icon type="ios-analytics"></Icon>
                        Item 3
                    </menu-item>
                    <menu-item name="4">
                        <Icon type="ios-paper"></Icon>
                        Item 4
                    </menu-item>
                </div>
            </i-menu>
        </Header>
        <Layout>
            <Sider hide-trigger :style="{background: '#fff'}">
                <i-menu active-name="1-2" theme="light" width="auto" :open-names="['1']">
                    <Submenu name="1">
                        <template slot="title">
                            <Icon type="ios-navigate"></Icon>
                            Item 1
                        </template>
                        <menu-item name="1-1">Option 1</menu-item>
                        <menu-item name="1-2">Option 2</menu-item>
                        <menu-item name="1-3">Option 3</menu-item>
                    </Submenu>
                    <Submenu name="2">
                        <template slot="title">
                            <Icon type="ios-keypad"></Icon>
                            Item 2
                        </template>
                        <menu-item name="2-1">Option 1</menu-item>
                        <menu-item name="2-2">Option 2</menu-item>
                    </Submenu>
                    <Submenu name="3">
                        <template slot="title">
                            <Icon type="ios-analytics"></Icon>
                            Item 3
                        </template>
                        <menu-item name="3-1">Option 1</menu-item>
                        <menu-item name="3-2">Option 2</menu-item>
                    </Submenu>
                </i-menu>
            </Sider>
            <Layout :style="{padding: '0 24px 24px'}">
                <Breadcrumb :style="{margin: '24px 0'}">
                    <breadcrumb-item>Home</breadcrumb-item>
                    <breadcrumb-item>Components</breadcrumb-item>
                    <breadcrumb-item>Layout</breadcrumb-item>
                </Breadcrumb>
                <i-content :style="{padding: '24px', minHeight: '280px', background: '#fff'}">
                    <iframe id="mainFrame" name="mainFrame" width="100%" src="${request.contextPath}/user/index"
                            frameborder="0" scrolling="no" class="iframe-cls"
                            onload="setIframeHeight(this)"></iframe>
                </i-content>
            </Layout>
        </Layout>
    </Layout>
</div>
<script>
    function setIframeHeight(iframe) {
        if (iframe) {
            var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
            if (iframeWin.document.body) {
                iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
            }
        }
    }
</script>
<script>
    new Vue({
        el: "#app",
        data: {},
        computed: {},
        created() {
        },
        methods: {},
        watch: {}

    })
</script>
</body>
</html>