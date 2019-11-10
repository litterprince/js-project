<link rel="stylesheet" href="vue/iview.css"/>
<style>
    .menu-icon {
        transition: all .3s;
    }

    .rotate-icon {
        transform: rotate(-90deg);
    }

    .menu-item span {
        display: inline-block;
        overflow: hidden;
        width: 69px;
        text-overflow: ellipsis;
        white-space: nowrap;
        vertical-align: bottom;
        transition: width .2s ease .2s;
    }

    .menu-item i {
        transform: translateX(0px);
        transition: font-size .2s ease, transform .2s ease;
        vertical-align: middle;
        font-size: 16px;
    }

    .collapsed-menu span {
        width: 0px;
        transition: width .2s ease;
    }

    .collapsed-menu i {
        transform: translateX(5px);
        transition: font-size .2s ease .2s, transform .2s ease .2s;
        vertical-align: middle;
        font-size: 22px;
    }

    .collapsed-menu .ivu-icon-ios-arrow-down {
        display: none;
    }

    .collapsed-menu .menu-item-span {
        display: none;
    }

    .ivu-menu .ivu-menu-submenu .menu-item-span .ivu-icon {
        margin-left: -17px !important;
    }
</style>