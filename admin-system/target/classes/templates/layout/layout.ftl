<#macro layout>
    <html>
    <head>
        <#include "style.ftl">
        <#include "js.ftl">
    </head>
    <body>
    <div id="app">
        <Layout>
            <#include "header.ftl">
            <Layout>
                <#include "sidebar.ftl">
                <Layout>
                    <i-content :style="{background: '#fff', minHeight: '260px'}" class="toolbox-content-cls">
                        <#-- 在这里嵌入main content --><#nested>
                    </i-content>
                </Layout>
            </Layout>
        </Layout>
    </div>
</#macro>
<#macro vue>
    </body>
    </html>
    <#nested>
</#macro>