<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${request.contextPath}/vue/iview.css"/>
    <script type="text/javascript" src="${request.contextPath}/vue/vue.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/vue/iview.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/jquery.min.js"></script>
</head>

<body>
<div id="circle">
    <Row>
        <div style="background:#eee;padding: 20px">
            <Card>
                <p slot="title">新财务确认收入</p>
                <Row>
                    <i-col span="11">
                        <Card>
                            <p slot="title">销售统计</p>
                            <Row type="flex" justify="space-around">
                                <i-circle v-for="item in income" :percent="100" :size="120" :stroke-color="item.color">
                                    <div class="demo-Circle-custom">
                                        <h1>{{item.title}}</h1>
                                        <p>{{item.num}}</p>
                                    </div>
                                </i-circle>

                            </Row>
                        </Card>
                    </i-col>
                    <i-col span="11" offset="2">
                        <Card>
                            <p slot="title">确认收入</p>
                            <Row type="flex" justify="space-around">
                                <i-circle :percent="100" :size="120" stroke-color="#5cb85c">
                                    <div class="demo-Circle-custom">
                                        <h1>1000</h1>
                                        <p>数据库值</p>
                                    </div>
                                </i-circle>
                                <i-circle :percent="100" :size="120" stroke-color="#5cb85c">
                                    <div class="demo-Circle-custom">
                                        <h1>1000</h1>
                                        <p>搜索值</p>
                                    </div>
                                </i-circle>
                            </Row>
                        </Card>
                    </i-col>
                </Row>
            </Card>
        </div>
    </Row>

    <Row>
        <div style="background:#eee;padding: 20px">
            <Card>
                <p slot="title">新财务确认成本</p>
                <Row>
                    <i-col span="7">
                        <Card>
                            <p slot="title">计提成本</p>
                            <Row type="flex" justify="space-around">
                                <i-circle :percent="100" :size="120" stroke-color="#5cb85c">
                                    <div class="demo-Circle-custom">
                                        <h1>1000</h1>
                                        <p>数据库值</p>
                                    </div>
                                </i-circle>
                                <i-circle :percent="100" :size="120" stroke-color="#5cb85c">
                                    <div class="demo-Circle-custom">
                                        <h1>1000</h1>
                                        <p>搜索值</p>
                                    </div>
                                </i-circle>
                            </Row>
                        </Card>
                    </i-col>
                    <i-col span="7" offset="1">
                        <Card>
                            <p slot="title">确认成本</p>
                            <Row type="flex" justify="space-around">
                                <i-circle :percent="100" :size="120" stroke-color="#5cb85c">
                                    <div class="demo-Circle-custom">
                                        <h1>1000</h1>
                                        <p>数据库</p>
                                    </div>
                                </i-circle>
                                <i-circle :percent="100" :size="120" stroke-color="#5cb85c">
                                    <div class="demo-Circle-custom">
                                        <h1>1000</h1>
                                        <p>搜索</p>
                                    </div>
                                </i-circle>
                            </Row>
                        </Card>
                    </i-col>
                    <i-col span="7" offset="1">
                        <Card>
                            <p slot="title">成本统计</p>
                            <Row type="flex" justify="space-around">
                                <i-circle :percent="100" :size="120" stroke-color="#5cb85c">
                                    <div class="demo-Circle-custom">
                                        <h1>1000</h1>
                                        <p>前天期末未确认</p>
                                    </div>
                                </i-circle>
                                <i-circle :percent="100" :size="120" stroke-color="#5cb85c">
                                    <div class="demo-Circle-custom">
                                        <h1>1000</h1>
                                        <p>昨天期初未确认</p>
                                    </div>
                                </i-circle>
                            </Row>
                        </Card>
                    </i-col>
                </Row>
            </Card>
        </div>
    </Row>
</div>

<script>
    new Vue({
        el: '#circle',
        data: {
            ctxPath: "/",
            data: {
                income: {
                    num: 42001776,
                    title: "标题",
                    percent: 75 + "%"
                },
                incomeV2: {},
                cost: {},
                costV2: {}
            },
            income: [
                {
                    title: 'title1',
                    num: 1,
                    color: '#5cb85c'
                }, {
                    title: 'title2',
                    num: 2,
                    color: '#B81218'
                }
            ]
        },
        computed: {},
        created() {
            this.ctxPath = '${request.contextPath}';
        },
        methods: {},
        watch: {
            data(oldVal, newVal) {
            }
        }
    });
</script>
</body>
</html>