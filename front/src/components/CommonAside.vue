<template>
    <div>
        <el-menu class="el-menu-vertical-demo" default-openeds= 2 @open="handleOpen" @close="handleClose" background-color="#545c64"
            text-color="#fff" active-text-color="#ffd04b">

                <h3>英雄攻略😋</h3>

            <el-menu-item index="1" @click="clickMenu2()">
                <span slot="title" >英雄排名</span>
            </el-menu-item>

            <el-submenu index="2">
                <template slot="title">
                    <span slot="title">所有英雄</span>
                </template>
                <el-menu-item-group v-for="item in heroData" :key="item.nickName">
                    <el-menu-item :index="item.nickName" @click="clickMenu3(item.nickName)">
                        <img :src="getImgUrl(item.heroName)" class="avatar">
                        {{ item.nickName }}</el-menu-item>
                </el-menu-item-group>
            </el-submenu>


        </el-menu>
    </div>
</template>

<script>
export default {
    data() {
        return {
            heroData: null,
        };
    },
    created() {
        const _this = this
        _this.$axios.get("http://1.12.222.51:9001/hero").then(res => {
            _this.heroData = res.data;
        })
    },
    methods: {
        clickMenu(item) {
            if (this.$route.path != item.path && !(this.$route.path == '/heroRank' && item.path == '/')) {
                this.$router.push(item.path)
            }
        },
        clickMenu2() {
            this.$router.push("/heroRank")
        },
        clickMenu3(name) {
            this.$router.push("/heroinfo?name=" + name)
            window.location.reload();

        },
        getImgUrl(icon) {
            return require("../assets/avatars/" + icon + ".png")
        },
        handleOpen(key, keyPath) {
            console.log(key, keyPath);
        },
        handleClose(key, keyPath) {
            console.log(key, keyPath);
        }

    },
    computed: {
    }
}
</script>

<style lang="less" scoped>
.el-menu {
    width: 200px;
    min-height: 400px;
    border-right: none;
    height: 100vh;

    h3 {
        margin: 0;
        padding: 0;
        color: 	white;
        background-color: #303133 !important;
        font-size: 16px;
        font-weight: 400;
        text-align: center;
        line-height: 48px;
    }

}

.avatar {
    height: 45px;
    width: 45px;
}
</style>