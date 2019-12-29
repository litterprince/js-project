<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${request.contextPath}/vue/iview.css"/>
    <script type="text/javascript" src="${request.contextPath}/vue/vue.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/vue/iview.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/jquery.min.js"></script>
</head>

<body>
<div id="users">
    <Layout :style="{padding: '10px 20px'}">
        <i-form ref="searchForm" :model="searchData" :rules="ruleInline" inline>
        <form-item prop="name">
            <i-input type="text" v-model="searchData.name" placeholder="用户名">
                <Icon type="ios-person-outline" slot="prepend"></Icon>
            </i-input>
        </form-item>
        <form-item prop="age">
            <i-input type="text" v-model="searchData.age" placeholder="年龄">
                <Icon type="ios-lock-outline" slot="prepend"></Icon>
            </i-input>
        </form-item>
        <form-item label="" prop="address">
            <i-select v-model="searchData.address" style="width:200px" placeholder="地址">
                <i-option v-for="item in selectList" :value="item.value" :key="item.value">{{item.label}}
                </i-option>
            </i-select>
        </form-item>
        <form-item prop="dates">
            <date-picker type="datetimerange" :value="searchData.dates" placeholder="选择开始和结束时间"
                         @on-change="handleDateChange" @on-clear="handleDateClear" style="width: 300px"></date-picker>
        </form-item>
        <form-item>
            <i-button type="primary" @click="handleSubmit('searchForm')">查询</i-button>
            <i-button @click="handleReset('searchForm')" style="margin-left: 8px">重置</i-button>
        </form-item>
    </i-form>

        <i-table :columns="columns" :data="data"></i-table>

        <Page :style="{padding: '10px 0'}" :total="total" show-total prev-text="上一页" next-text="下一页" @on-change="handlePage"/>
    </Layout>
</div>

<script>
    new Vue({
        el: '#users',
        data: {
            ctxPath: "/",
            columns: [
                {
                    title: '用户名',
                    key: 'name'
                },
                {
                    title: '年龄',
                    key: 'age'
                },
                {
                    title: '地址',
                    key: 'address'
                }],
            data: [],
            total: 100,
            searchData: {
                page: 0,
                size: 10,
                name: '',
                age: '',
                address: '',
                dates: [],
                startDate: '',
                endDate: ''
            },
            selectList: [
                {label: '选择一', value: 'one'},
                {label: '选择二', value: 'two'}
            ],
            ruleInline: {}
        },
        computed: {},
        created() {
            this.ctxPath = '${request.contextPath}';
            this.getList();
        },
        methods: {
            getList() {
                let _this = this;
                $.ajax({
                    url: this.ctxPath + '/user/getUserList',
                    type: 'post',
                    contentType: 'application/json',
                    data: JSON.stringify(_this.searchData),
                    success: function (res) {
                        if (res.code === 0) {
                            _this.data = res.data;
                        } else {
                            _this.$Message.error(res.message);
                        }
                    },
                    error: function (e) {
                        _this.$Message.error(e);
                    }
                });
            },
            handlePage(value) {
                this.searchData.page = value;
                this.getList();
            },
            handleSubmit(name) {
                this.getList();
            },
            handleReset(name) {
                this.searchData.startDate = '';
                this.searchData.endDate = '';
                this.$refs[name].resetFields();
            },
            handleDateChange(date) {
                this.searchData.startDate = date[0];
                this.searchData.endDate = date[1];
            },
            handleDateClear() {
                this.searchData.startDate = '';
                this.searchData.endDate = '';
            }
        },
        watch: {
            data(oldVal, newVal) {
            }
        }
    });
</script>
</body>
</html>