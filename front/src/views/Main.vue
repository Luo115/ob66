<template>
    <div>
        <el-container>
            <el-aside width="auto">
                <common-aside />
            </el-aside>

            <el-main>
                <router-view></router-view>
            </el-main>
        </el-container>

    </div>

</template>
  
<script>
import CommonAside from '../components/CommonAside.vue'
export default {
    name: 'Main',
    data() {
        return {}
    },
    components: {
        CommonAside,
    }
}
</script>
  
<style>
.el-main{
    padding: 0;
}

</style>
  
  