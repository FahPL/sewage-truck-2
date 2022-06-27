<template>
<v-card>
<v-app-bar
      dark
      height="200px"
      color="#04B640"
      class=""
      style="border-radius: 0px 0px 125px 125px"
    >
      <v-toolbar-title style="margin-left: 30px; padding: auto" class="text-h5"
        >คำร้องขอจากรถขนสิ่งปฏิกูล</v-toolbar-title
      >      
    </v-app-bar>
    <v-icon color="#08782E" class="mr-5" x-large @click="backmain">
      mdi-arrow-left
    </v-icon>

     <v-container>    
        <v-row dense v-for="item in rqtruck"  :key="item.rqtruck">
          <v-col cols="12" class="mgt">
            <v-card color="#fff" class="pa-4 text-no-wrap rounded-xl" >
              <div class="d-flex align-center">
                <div class="col-10">
                  <v-card-text class="text--primary" >
                    <div>
                      <p class="font-weight-bold">หน่วยงาน/ชื่อผู้ประกอบการขนสิ่งปฏิกูล : {{item.nametruck}}</p>
                      <p class="font-weight-bold">ที่อยู่ : {{item.addtruck}} {{item.citytruck}}</p>
                      <p class="font-weight-bold">โทรศัพท์ : {{item.teltruck}}</p>
                      <p class="font-weight-bold">ปริมาณสิ่งปฏิกูล : {{item.totalq}} ลูกบาศก์เมตร</p>
                    </div>
                  </v-card-text>
                </div>
                <div class="col-2">
                  <v-row>
                    <v-col>
                      <v-card-actions>
                        <v-btn rounded color="#36B833" dark @click="recordlocation"> ยืนยัน </v-btn>
                      </v-card-actions>
                    </v-col>
                    <v-col>
                      <v-card-actions>
                        <v-btn rounded color="#EE3520" dark> ปฏิเสธ </v-btn>
                      </v-card-actions>
                    </v-col>
                  </v-row>
                </div>
              </div>
            </v-card>
          </v-col>
        </v-row>
     
    </v-container>

</v-card>
</template>

<script>
  export default {
    data () {
      return {
        rqtruck: [
          {
            nametruck: 'Frozen Yogurt',
            addtruck: '159 ม.4 ',
            citytruck: 'เชียงใหม่',
            teltruck: '065-6588598',
            totalq: '600',

          },
          {
            nametruck: 'Frozen Yogurt',
            addtruck: '159',
            teltruck: '065-6588598',
            totalq: '500',
          },
          {
            nametruck: 'Frozen Yogurt',
            addtruck: '159',
            teltruck: '065-6588598',
            totalq: '100',
          },
          
        ],
      }
    },
     methods: {
  
    backmain(){
      this.$router.push("/sewage")
    },
    recordlocation(){
      this.$router.push("/recordlocation")
    },
  }
  }
</script>