<Header>
    <i-menu mode="horizontal" theme="dark" active-name="1">
        <div class="layout-logo">
            
        </div>
        <div class="layout-nav">
            <div class="layout-nav-right">
                <Avatar :style="{background: 'rgb(50, 197, 219)'}">{{ userNameAvatar }}</Avatar>
                <span style="color: #fff; margin-left: 7px; font-weight: bolder;">{{userName}}</span>
                <i-button size="small" type="text" class="header-logout" @click="logoutBtn()">
                    <Icon type="md-exit" color="#fff" size="19" class="header-logout-icon"/>
                </i-button>
            </div>
        </div>
    </i-menu>
</Header>