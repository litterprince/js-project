<Sider collapsible :collapsed-width="78" v-model="isCollapsed">
    <i-menu accordion active-name="2-1" theme="dark" width="auto" :class="menuItemClasses"
            :open-names="['2-0']">
        <SubMenu name="1-0">
            <template slot="title">
                <icon type="ios-build"></icon>
                <span class="menu-item-span">基础配置</span>
            </template>
            <menu-item class="menu-item-span" name="1-1" @click.native="goPage('/toolbox/elec-invoice')">
                <Icon type="ios-keypad"></Icon>
                电子发票
            </menu-item>
            <menu-item class="menu-item-span" name="1-2" @click.native="goPage('/toolbox/payway')">
                <Icon type="md-card"></Icon>
                支付方式
            </menu-item>
            <menu-item class="menu-item-span" name="1-4" @click.native="goPage('/toolbox/jd')">
                <Icon type="ios-finger-print"></Icon>
                京东白条
            </menu-item>
            <menu-item class="menu-item-span" name="1-5" @click.native="goPage('/toolbox/checkstand')">
                <Icon type="logo-usd"></Icon>
                收银台配置
            </menu-item>
            <menu-item class="menu-item-span" name="1-6" @click.native="goPage('/toolbox/productClass/productClassList')">
                <Icon type="ios-pricetags"></Icon>
                兴趣爱好
            </menu-item>
        </SubMenu>

        <SubMenu name="2-0">
            <template slot="title">
                <icon type="ios-hammer"></icon>
                <span class="menu-item-span">数据恢复</span>
            </template>
            <menu-item class="menu-item-span" name="2-1" @click.native="goPage('/toolbox/monitor/repair')">
                <Icon type="ios-keypad"></Icon>
                后台专用恢复
            </menu-item>
            <menu-item class="menu-item-span" name="2-2" @click.native="goPage('/toolbox/monitor/repair/user')">
                <Icon type="ios-body"></Icon>
                用户专用恢复
            </menu-item>
            <menu-item class="menu-item-span" name="2-3" @click.native="goPage('/toolbox/finance/cost_repair/royalty_list')">
                <Icon type="ios-film-outline"></Icon>
                抵充应删版税收入<br/>&nbsp;&nbsp;老财务
            </menu-item>
            <menu-item class="menu-item-span" name="2-4" @click.native="goPage('/toolbox/finance/income_repair/list')">
                <Icon type="ios-cash"></Icon>
                退课确认收入找补<br/>&nbsp;&nbsp;老财务
            </menu-item>
            <menu-item class="menu-item-span" name="2-5" @click.native="goPage('/toolbox/repair/income-confirm/list')">
                <Icon type="ios-calculator"></Icon>
                确认收入跑批修复<br/>&nbsp;&nbsp;老财务
            </menu-item>
        </SubMenu>

        <SubMenu name="3-0">
            <template slot="title">
                <icon type="md-analytics"></icon>
                <span class="menu-item-span">数据监控</span>
            </template>
            <menu-item class="menu-item-span" name="3-1" @click.native="goPage('/toolbox/monitor/order')">
                <Icon type="ios-compass"></Icon>
                订单数据罗盘
            </menu-item>
            <menu-item class="menu-item-span" name="3-2" @click.native="goPage('/toolbox/monitor/mq/queue')">
                <Icon type="md-cloud-outline"></Icon>
                RabbitMQ监控
            </menu-item>
            <menu-item class="menu-item-span" name="3-3" @click.native="goPage('/toolbox/monitor/mq/show')">
                <Icon type="md-cloud-upload"></Icon>
                RabbitMQ消费
            </menu-item>
        </SubMenu>

        <SubMenu name="4-0">
            <template slot="title">
                <icon type="md-ionic"></icon>
                <span class="menu-item-span">促销配置</span>
            </template>
            <menu-item class="menu-item-span" name="4-7" @click.native="goPage('/toolbox/deposit-promote/list')">
                <Icon type="ios-keypad"></Icon>
                定金促销管理
            </menu-item>
            <menu-item class="menu-item-span" name="4-1" @click.native="goPage('/toolbox/newpromote/productIdPromotionIdRe')">
                <Icon type="ios-keypad"></Icon>
                产品与促销关系
            </menu-item>
            <menu-item class="menu-item-span" name="4-2" @click.native="goPage('/toolbox/newpromote/promotionIdRule')">
                <Icon type="ios-keypad"></Icon>
                促销与规则关系
            </menu-item>
            <menu-item class="menu-item-span" name="4-3" @click.native="goPage('/toolbox/newpromote/spiltRuleInfo')">
                <Icon type="ios-keypad"></Icon>
                促销活动规则
            </menu-item>
            <menu-item class="menu-item-span" name="4-4" @click.native="goPage('/toolbox/newpromote/default_promotion_del')">
                <Icon type="ios-keypad"></Icon>
                未登录缓存删除
            </menu-item>
            <menu-item class="menu-item-span" name="4-5" @click.native="goPage('/toolbox/newpromote/find_give_coupon_list')">
                <Icon type="ios-keypad"></Icon>
                赠送优惠券日志
            </menu-item>
        <#--                            <menu-item class="menu-item-span" name="4-6" @click.native="goPage('/toolbox/receiveplace/receive_place_list')">-->
        <#--                                <Icon type="ios-keypad"></Icon>-->
        <#--                                激活地点管理-->
        <#--                            </menu-item>-->
            <menu-item class="menu-item-span" name="4-7" @click.native="goPage('/toolbox/activity/lms_list')">
                <Icon type="ios-keypad"></Icon>
                课堂促销绑定
            </menu-item>
        </SubMenu>

        <SubMenu name="5-0">
            <template slot="title">
                <icon type="ios-plane"></icon>
                <span class="menu-item-span">售前配置</span>
            </template>
            <menu-item class="menu-item-span" name="5-1" @click.native="goPage('/toolbox/order/pay-info')">
                <Icon type="ios-pulse"></Icon>
                订单支付情况
            </menu-item>
            <menu-item class="menu-item-span" name="5-2" @click.native="goPage('/toolbox/product/html/list')">
                <Icon type="md-phone-landscape"></Icon>
                详情页静态化
            </menu-item>
            <menu-item class="menu-item-span" name="5-3" @click.native="goPage('/toolbox/button/manage/list')">
                <Icon type="ios-options"></Icon>
                详情页活动按钮
            </menu-item>
            <menu-item class="menu-item-span" name="5-4" @click.native="goPage('/toolbox/configJs/manage/list')">
                <Icon type="logo-javascript"></Icon>
                详情页JS配置
            </menu-item>
        </SubMenu>

        <SubMenu name="6-0">
            <template slot="title">
                <icon type="ios-chatbubbles"></icon>
                <span class="menu-item-span">微信服务</span>
            </template>
            <menu-item class="menu-item-span" name="6-1" @click.native="goPage('/toolbox/wechat/manage/list')">
                <Icon type="md-easel"></Icon>
                模板管理
            </menu-item>
        </SubMenu>

        <SubMenu name="7-0">
            <template slot="title">
                <icon type="logo-bitcoin"></icon>
                <span class="menu-item-span">财务配置</span>
            </template>
            <menu-item class="menu-item-span" name="7-1" @click.native="goPage('/toolbox/finance/income/list')">
                <Icon type="logo-euro"></Icon>
                收入配置
            </menu-item>
            <menu-item class="menu-item-span" name="7-2" @click.native="goPage('/toolbox/finance/crontab/log?type=1')">
                <Icon type="md-reorder"></Icon>
                收入计划任务日志
            </menu-item>
            <menu-item class="menu-item-span" name="7-3" @click.native="goPage('/toolbox/finance/crontab/log?type=2')">
                <Icon type="ios-options"></Icon>
                成本计划任务日志
            </menu-item>
            <menu-item class="menu-item-span" name="7-4" @click.native="goPage('/toolbox/finance/cost/list')">
                <Icon type="ios-paper"></Icon>
                成本变更列表<br/>&nbsp;&nbsp;老财务
            </menu-item>
            <menu-item class="menu-item-span" name="7-5" @click.native="goPage('/toolbox/finance/cost/v2/list')">
                <Icon type="md-paper"></Icon>
                成本变更列表<br/>&nbsp;&nbsp;新财务
            </menu-item>
            <menu-item class="menu-item-span" name="7-6" @click.native="goPage('/toolbox/refund/handle/index')">
                <Icon type="md-refresh"></Icon>
                退课处理流程
            </menu-item>
            <menu-item class="menu-item-span" name="7-7" @click.native="goPage('/toolbox/agent/contrast/list')">
                <Icon type="md-swap"></Icon>
                代理商对账
            </menu-item>
        </SubMenu>

        <SubMenu name="8-0">
            <template slot="title">
                <icon type="ios-people"></icon>
                <span class="menu-item-span">账户配置</span>
            </template>
            <menu-item class="menu-item-span" name="8-1" @click.native="goPage('/toolbox/ios-k-account-recharge/index?rechargeType=-1&rechargeStatus=-1')">
                <Icon type="logo-apple"></Icon>
                K币充值记录
            </menu-item>
        </SubMenu>

        <SubMenu name="9-0">
            <template slot="title">
                <icon type="ios-cube"></icon>
                <span class="menu-item-span">网盟配置</span>
            </template>
            <menu-item class="menu-item-span" name="9-1" @click.native="goPage('/toolbox/order-alliance-sync/index')">
                <Icon type="ios-keypad"></Icon>
                网盟订单推送记录
            </menu-item>
        </SubMenu>

        <SubMenu name="10-0">
            <template slot="title">
                <icon type="logo-tumblr"></icon>
                <span class="menu-item-span">天猫配置</span>
            </template>
            <menu-item class="menu-item-span" name="10-1" @click.native="goPage('/toolbox/tmall_sync')">
                <Icon type="ios-basket"></Icon>
                天猫店铺记录
            </menu-item>
        </SubMenu>

        <SubMenu name="11-0">
            <template slot="title">
                <icon type="md-redo"></icon>
                <span class="menu-item-span">导出配置</span>
            </template>
            <menu-item class="menu-item-span" name="11-1" @click.native="goPage('/toolbox/export/config/list')">
                <Icon type="md-reorder"></Icon>
                导出条件配置
            </menu-item>
            <menu-item class="menu-item-span" name="11-2" @click.native="goPage('/toolbox/export/config/search')">
                <Icon type="ios-search"></Icon>
                导出记录查询
            </menu-item>
        </SubMenu>

        <SubMenu name="12-0">
            <template slot="title">
                <icon type="md-reverse-camera"></icon>
                <span class="menu-item-span">退课换课</span>
            </template>
            <menu-item class="menu-item-span" name="12-1" @click.native="goPage('/toolbox/refund-type-reason/list')">
                <Icon type="ios-keypad"></Icon>
                原因列表
            </menu-item>
            <menu-item class="menu-item-span" name="12-2" @click.native="goPage('/toolbox/change/repair/consumer-ex-list')">
                <Icon type="ios-keypad"></Icon>
                换课消费异常列表
            </menu-item>
        </SubMenu>
        <SubMenu name="13-0">
            <template slot="title">
                <icon type="md-hammer"></icon>
                <span class="menu-item-span">系统管理</span>
            </template>
            <menu-item class="menu-item-span" name="13-1" @click.native="goPage('/toolbox/admin/user')">
                <Icon type="md-person-add"></Icon>
                管理员用户
            </menu-item>
        </SubMenu>
    </i-menu>
</Sider>