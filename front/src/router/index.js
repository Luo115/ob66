import Vue from 'vue'
import VueRouter from 'vue-router'
import Main from '../views/Main'
import HeroRank from '@/views/HeroRank'
import HeroInfo from '@/views/HeroInfo'

Vue.use(VueRouter)

//解决跳转相同页面报错
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
    return originalPush.call(this, location).catch(err => err);
}
const routes = [
    {
        path: '/',
        component: Main,
        redirect: '/heroRank',
        //嵌套路由
        children: [
            { path: '/heroRank', component: HeroRank },
            { path: '/heroInfo', component: HeroInfo },
        ]
    }

]

const router = new VueRouter({
    mode: "history", //去掉路由的# 
    routes, // `routes: routes` 的缩写
})

export default router;