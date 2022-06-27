import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import vuetify from './plugins/vuetify'
import axios from "axios";




Vue.use({
  install(Vue) {
    Vue.prototype.$guest_api = axios.create({
      baseURL: "http://localhost:4000/start_api/api/v1",
      timeout: 30000,
      headers: {
        "content-type": "application/json",
      },
    });
  },
});

Vue.config.productionTip = false

new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount('#app')
