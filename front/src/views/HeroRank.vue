<template>
    <div>

        <el-button-group>
            <el-button type="info" plain @click="choose1">上单</el-button>
            <el-button type="info" plain @click="choose2">打野</el-button>
            <el-button type="info" plain @click="choose3">中单</el-button>
            <el-button type="info" plain @click="choose4">&nbsp;ad&nbsp;</el-button>
            <el-button type="info" plain @click="choose5">辅助</el-button>
        </el-button-group>

        <table>
            <tbody class="tbody1" :style="style1">
                <tr>
                    <th class="th1">#</th>
                    <th class="th2">层级</th>
                    <th colspan="2">英雄</th>
                    <th>胜率</th>
                    <th>登场率</th>
                </tr>
                <tr v-for="item in tableData1" :key="item.id">
                    <th>
                        {{ item.level }}
                    </th>
                    <th>
                        {{ item.layer }}
                    </th>
                    <th colspan="2">
                        <a :href=getUrl(item.heroName)>
                            <img :src="item.avatar">
                            <div class="name">
                                {{ item.heroName }}
                            </div>
                        </a>
                    </th>
                    <th>
                        {{ item.winRate }}
                    </th>
                    <th>
                        {{ item.pickRate }}
                    </th>
                </tr>
            </tbody>
        </table>
        <table>
            <tbody class="tbody2" :style="style2">
                <tr>
                    <th class="th1">#</th>
                    <th class="th2">层级</th>
                    <th colspan="2">英雄</th>
                    <th>胜率</th>
                    <th>登场率</th>
                </tr>
                <tr v-for="item in tableData2" :key="item.id">
                    <th>
                        {{ item.level }}
                    </th>
                    <th>
                        {{ item.layer }}
                    </th>
                    <th colspan="2">
                        <a :href=getUrl(item.heroName)>
                            <img :src="item.avatar">
                            <div class="name">
                                {{ item.heroName }}
                            </div>
                        </a>
                    </th>
                    <th>
                        {{ item.winRate }}
                    </th>
                    <th>
                        {{ item.pickRate }}
                    </th>
                </tr>
            </tbody>
        </table>
        <table>
            <tbody class="tbody3" :style="style3">
                <tr>
                    <th class="th1">#</th>
                    <th class="th2">层级</th>
                    <th colspan="2">英雄</th>
                    <th>胜率</th>
                    <th>登场率</th>
                </tr>
                <tr v-for="item in tableData3" :key="item.id">
                    <th>
                        {{ item.level }}
                    </th>
                    <th>
                        {{ item.layer }}
                    </th>
                    <th colspan="2">
                        <a :href=getUrl(item.heroName)>
                            <img :src="item.avatar">
                            <div class="name">
                                {{ item.heroName }}
                            </div>
                        </a>
                    </th>
                    <th>
                        {{ item.winRate }}
                    </th>
                    <th>
                        {{ item.pickRate }}
                    </th>
                </tr>
            </tbody>
        </table>
        <table>
            <tbody class="tbody4" :style="style4">
                <tr>
                    <th class="th1">#</th>
                    <th class="th2">层级</th>
                    <th colspan="2">英雄</th>
                    <th>胜率</th>
                    <th>登场率</th>
                </tr>
                <tr v-for="item in tableData4" :key="item.id">
                    <th>
                        {{ item.level }}
                    </th>
                    <th>
                        {{ item.layer }}
                    </th>
                    <th colspan="2">
                        <a :href=getUrl(item.heroName)>
                            <img :src="item.avatar">
                            <div class="name">
                                {{ item.heroName }}
                            </div>
                        </a>
                    </th>
                    <th>
                        {{ item.winRate }}
                    </th>
                    <th>
                        {{ item.pickRate }}
                    </th>
                </tr>
            </tbody>
        </table>
        <table>
            <tbody class="tbody5" :style="style5">
                <tr>
                    <th class="th1">#</th>
                    <th class="th2">层级</th>
                    <th colspan="2">英雄</th>
                    <th>胜率</th>
                    <th>登场率</th>
                </tr>
                <tr v-for="item in tableData5" :key="item.id">
                    <th>
                        {{ item.level }}
                    </th>
                    <th>
                        {{ item.layer }}
                    </th>
                    <th colspan="2">
                        <a :href=getUrl(item.heroName)>
                            <img :src="item.avatar">
                            <div class="name">
                                {{ item.heroName }}
                            </div>
                        </a>
                    </th>
                    <th>
                        {{ item.winRate }}
                    </th>
                    <th>
                        {{ item.pickRate }}
                    </th>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
export default {
    data() {
        return {
            tableData1: null,
            tableData2: null,
            tableData3: null,
            tableData4: null,
            tableData5: null,
            style1: "display:",
            style2: "display:none",
            style3: "display:none",
            style4: "display:none",
            style5: "display:none",
        }
    },
    methods: {
        getUrl(heroName){
            return "heroinfo?name=" + heroName
        },

        choose1(){
            this.style1="display:";
            this.style2="display:none";
            this.style3="display:none";
            this.style4="display:none";
            this.style5="display:none";
        },
        choose2(){
            this.style1="display:none";
            this.style2="display:";
            this.style3="display:none";
            this.style4="display:none";
            this.style5="display:none";
        },
        choose3(){
            this.style1="display:none";
            this.style2="display:none";
            this.style3="display:";
            this.style4="display:none";
            this.style5="display:none";
        },
        choose4(){
            this.style1="display:none";
            this.style2="display:none";
            this.style3="display:none";
            this.style4="display:";
            this.style5="display:none";
        },
        choose5(){
            this.style1="display:none";
            this.style2="display:none";
            this.style3="display:none";
            this.style4="display:none";
            this.style5="display:";
        },

    },
    created() {
        const _this = this
        _this.$axios.get("http://1.12.222.51:9001/top").then(res => {
            _this.tableData1 = res.data;
        })
        _this.$axios.get("http://1.12.222.51:9001/jungle").then(res => {
            _this.tableData2 = res.data;
        })
        _this.$axios.get("http://1.12.222.51:9001/middle").then(res => {
            _this.tableData3 = res.data;
        })
        _this.$axios.get("http://1.12.222.51:9001/bottom").then(res => {
            _this.tableData4 = res.data;
        })
        _this.$axios.get("http://1.12.222.51:9001/support").then(res => {
            _this.tableData5 = res.data;
        })
    }
}
</script>

<style scoped>

tr {
    height: 60px;
    border-bottom: 2px solid #e6e6e6;
}

th {
    height: 50px;
}

table {
    margin-left: 300px;
    border-collapse: collapse;
    width: 600px;
}

a {
    text-decoration: none;
    display: flex;
}

img {
    height: 50px;
    width: 50px;
}


.th1 {
    width: 80px;
}

.th2 {
    width: 70px;
}

.name {
    text-align: center;
    line-height: 45px;
}
.el-button-group{
    position: relative;
    left: 400px;
}
.el-button{
    font-size: 16px;
}
</style>