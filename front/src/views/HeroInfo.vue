<template>
    <div class="container">
        <div class="avatar">
            <img :src="avatarUrl()">
            <el-tag type="info">{{ heroInfo.position }}</el-tag>
            <span class="name">{{ heroInfo.nickname }}</span>
        </div>

        <div class="skillGroup">
            <img :src="heroInfo.passiveicon">
            <img :src="heroInfo.qicon">
            <img :src="heroInfo.wicon">
            <img :src="heroInfo.eicon">
            <img :src="heroInfo.ricon">
        </div>

        <table class="table1">
            <thead class="spell">
                <tr class="head1">
                    <th scope="col" class="th1">
                        <h4><strong>&nbsp;&nbsp;召唤师技能</strong></h4>
                    </th>
                    <th scope="col" class="th2">登场率</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <img :src="heroInfo.summonerspell1"
                            style="margin-right: 10px;margin-left: 10px; height: 40px; width: 40px;">
                        <img :src="heroInfo.summonerspell2" style=" height: 40px; width: 40px;">
                    </td>
                    <td>
                        <span style="font-size: 20px;">
                            {{ heroInfo.summonerspellpresentrate1 }}
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img :src="heroInfo.summonerspell3"
                            style="margin-right: 10px;margin-left: 10px; height: 40px; width: 40px;">
                        <img :src="heroInfo.summonerspell4" style=" height: 40px; width: 40px;">
                    </td>
                    <td>
                        <span style="font-size: 20px;">
                            {{ heroInfo.summonerspellpresentrate2 }}
                        </span>
                    </td>
                </tr>
            </tbody>
            <thead class="spell">
                <tr class="head1">
                    <th scope="col" class="th1">
                        <h4><strong>&nbsp;技能加点</strong></h4>
                    </th>
                    <th scope="col" class="th2"></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="font-size: 22px;">
                        &nbsp;{{ heroInfo.skillfirst }}&nbsp;→
                        {{ heroInfo.skillsecond }}&nbsp;→
                        {{ heroInfo.skillthird }}
                    </td>
                    <td>
                    </td>

                </tr>

            </tbody>
        </table>

        <table class="table2">
            <thead>
                <tr class="head1">
                    <th scope="col" class="th1">
                        <h4 style="text-align:center"><strong>出装</strong></h4>
                    </th>
                    <th></th>
                    <th scope="col" class="th2">登场率</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row" rowspan="2" style="width: 50px;">出门装</th>
                    <td>
                        <img :src="heroInfo.buildinit1" style="margin-right:8px;">
                        <img :src="heroInfo.buildinit2">
                    </td>
                    <td style="text-align:center">
                        {{ heroInfo.buildinitpresentrate1 }}
                    </td>
                </tr>
                <tr>
                    <td>
                        <img :src="heroInfo.buildinit3" style="margin-right:8px;">
                        <img :src="heroInfo.buildinit4">
                    </td>
                    <td style="text-align:center">
                        {{ heroInfo.buildinitpresentrate2 }}
                    </td>
                </tr>
                <tr>
                    <th scope="row" rowspan="3" style="width: 50px;">中期出装</th>
                    <td>
                        <img :src="heroInfo.buildrecommend1" style="margin-right:10px;">
                        <span class="separator">»</span>
                        <img :src="heroInfo.buildrecommend2" style="margin-right:10px;">
                        <span class="separator">»</span>

                        <img :src="heroInfo.buildrecommend3">
                    </td>
                    <td style="text-align:center">
                        {{ heroInfo.buildrecommendpresentrate1 }}
                    </td>
                </tr>
                <tr>
                    <td>
                        <img :src="heroInfo.buildrecommend4" style="margin-right:10px;">
                        <span class="separator">»</span>
                        <img :src="heroInfo.buildrecommend5" style="margin-right:10px;">
                        <span class="separator">»</span>

                        <img :src="heroInfo.buildrecommend6">
                    </td>
                    <td style="text-align:center">
                        {{ heroInfo.buildrecommendpresentrate2 }}
                    </td>
                </tr>
                <tr>
                    <td>
                        <img :src="heroInfo.buildrecommend7" style="margin-right:10px;">
                        <span class="separator">»</span>
                        <img :src="heroInfo.buildrecommend8" style="margin-right:10px;">
                        <span class="separator">»</span>

                        <img :src="heroInfo.buildrecommend9">
                    </td>
                    <td style="text-align:center">
                        {{ heroInfo.buildrecommendpresentrate3 }}
                    </td>
                </tr>
                <tr>
                    <th sope="row" rowspan="3" style="width: 50px;">鞋子</th>
                    <td>
                        <img :src="heroInfo.boot1">
                    </td>
                    <td style="text-align:center">
                        {{ heroInfo.bootpresentrate1 }}
                    </td>
                </tr>
                <tr>
                    <td>
                        <img :src="heroInfo.boot2">
                    </td>
                    <td style="text-align:center">
                        {{ heroInfo.bootpresentrate2 }}
                    </td>
                </tr>
                <tr>
                    <td>
                        <img :src="heroInfo.boot3">
                    </td>
                    <td style="text-align:center">
                        {{ heroInfo.bootpresentrate3 }}
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="rune">
            <img :src="heroInfo.rune1" class="mainrune">
            <img :src="heroInfo.rune2" class="normalrune">
            <img :src="heroInfo.rune3" class="normalrune">
            <img :src="heroInfo.rune4" class="normalrune">
            <img :src="heroInfo.rune5" class="normalrune">
            <img :src="heroInfo.rune6" class="normalrune">
            <img :src="heroInfo.runemini1" class="runemini">
            <img :src="heroInfo.runemini2" class="runemini">
            <img :src="heroInfo.runemini3" class="runemini">
            <span class="runePresentRate">{{ heroInfo.runepresentrate1 }}</span>

        </div>
        <div class="rune">
            <img :src="heroInfo.rune7" class="mainrune">
            <img :src="heroInfo.rune8" class="normalrune">
            <img :src="heroInfo.rune9" class="normalrune">
            <img :src="heroInfo.rune10" class="normalrune">
            <img :src="heroInfo.rune11" class="normalrune">
            <img :src="heroInfo.rune12" class="normalrune">
            <img :src="heroInfo.runemini4" class="runemini">
            <img :src="heroInfo.runemini5" class="runemini">
            <img :src="heroInfo.runemini6" class="runemini">
            <span class="runePresentRate">{{ heroInfo.runepresentrate2 }}</span>
        </div>
    </div>
</template>


<script>
export default {
    data() {
        return {
            heroInfo: null,
        }
    },

    //获取到信息!
    created() {
        const that = this
        that.$axios.get("http://1.12.222.51:9001/heroinfo", {
            params: {
                name: that.$route.query.name
            }
        }).then(res => {
            that.heroInfo = res.data;
            console.log(that.heroInfo)
        })
    },
    methods: {
        avatarUrl() {
            return require("../assets/avatars/" + this.heroInfo.heroname + ".png")
        }
    }


}

</script>
<style lang="less"   scoped>
.rune {
    height: 67px;
    width: 1079px;
    border: 1px solid red;
    position: relative;
    left: 39px;
    bottom: 473px;
    background-color: #f5f5f5;
    border: solid 1px #e6e6e6;
    border-collapse: collapse;

    .normalrune {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        margin-top: 15px;
        margin-right: 15px;
    }

    .mainrune {
        margin-left: 9px;
        margin-right: 9px;
        height: 50px;
        width: 50px;
        position: relative;
        top: 5px;
    }
    .runePresentRate{
        position: relative;
        left: 550px;
        bottom: 10px;
    }
}

.table2 {
    margin: 0;
    width: 600px;
    background-color: #f5f5f5;
    border: solid 1px #e6e6e6;
    border-collapse: collapse;
    position: relative;
    left: 520px;
    bottom: 480px;

    img {
        width: 40px;
        height: 40px;
        border-radius: 3px;
    }

    .th1 {
        width: 125px;
        text-align: left;
        height: 35px;
    }


    .separator {
        position: relative;
        right: 4px;
        top: -15px;
    }
}

.head1 {
    background-color: white;
}

.table1 {
    margin: 0;
    width: 400px;
    background-color: #f5f5f5;
    border: solid 1px #e6e6e6;
    border-collapse: collapse;
    position: relative;
    left: 39px;
    top: 82px;

    .spell {
        .th1 {
            width: 400px;
            text-align: left;
            height: 35px;
        }

        .th2 {
            width: 90px;
            height: 35px;

        }
    }
}

td {
    height: 60px;
}





.skillGroup {
    position: relative;
    top: 61px;
    left: 43px;

    img {
        margin-right: 15px;
        border-radius: 5px;
        height: 64px;
        width: 64px;
    }
}

.container {
    height: 100vh;
    width: 1240px;
    padding: 0;
}

.avatar {
    position: relative;
    left: 40px;
    top: 40px;
    width: 315px;

    img {
        width: 100px;
        height: 100px;
        border-radius: 10px;
    }

    .name {
        position: absolute;
        right: 97px;
        bottom: 59px;
        font-size: 25px;
    }

    .el-tag {
        font-size: 25px;
        position: relative;
        left: 20px;
        bottom: 20px;
    }

}
</style>