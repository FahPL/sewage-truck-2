<template>
  <v-app>

    <v-main>
      <router-view/>

    </v-main>
    <v-card class="text-center">
      <v-btn depressed color="cyan" @click="goHome"> หน้าแรก </v-btn>
      <v-btn depressed color="cyan" @click="goPeople"> ครัวเรือน </v-btn>
      <v-btn depressed color="error" @click="gotruck"> รถขนสิ่งปฏิกูล </v-btn>
      <v-btn depressed dark @click="gosewage"> สถานที่กำจัด </v-btn>
      <!-- <v-btn depressed color="green" dark @click="gorequestp"> คำร้องขอจากครัวเรือน </v-btn>
      <v-btn depressed color="purple" dark @click="gorequestt"> คำร้องขอจากรถ </v-btn> -->
    </v-card>
    
  </v-app>
</template>

<script>

export default {
  name: 'App',

  data: () => ({
    //
  }),
  methods: {
    goHome(){
      this.$router.push("/")
    },
    goPeople(){
      this.$router.push("/1")
    },
    gotruck(){
      this.$router.push("/truck")
    },
    gosewage(){
      this.$router.push("/sewage")
    },
    gorequestp(){
      this.$router.push("/requestp")
    },
    gorequestt(){
      this.$router.push("/requestt")
    },
  }
};
</script>
