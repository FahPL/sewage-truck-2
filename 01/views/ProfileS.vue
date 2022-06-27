<template>
  <v-card>
    <v-app-bar
      dark
      height="200px"
      color="#04B640"
      style="border-radius: 0px 0px 125px 125px"
    >
      <v-toolbar-title
        style="margin-left: 30px; padding: auto"
        class="text-h5 justify-center"
        >โปรไฟล์กำจัด</v-toolbar-title
      >
    </v-app-bar>
     <v-icon
          color="#08782E"
          class="mr-5"
          x-large
          @click="backmain"
        >
          mdi-arrow-left
        </v-icon>
    <v-container>
      <v-row dense>
        <v-col cols="12" class="mgt">
          <v-card color="#C0FCB0" class="pa-4 text-no-wrap rounded-xl mb-6">
            <div class="d-flex align-center">
              <div class="col-12">
                <v-card-text class="text--primary">
                  <div>
                    <p class="font-weight-bold">
                      หน่วยงาน/ชื่อผู้ประกอบการกำจัดสิ่งปฏิกูล: {{ datalocation.nameloca }}
                    </p>

                    <p class="font-weight-bold">
                      หมายเลขอนุญาต : {{ datalocation.licensenumberl }}
                    </p>
                    <p class="font-weight-bold">
                      อนุญาตโดย : {{ datalocation.allowedbyl }}
                    </p>
                    <p class="font-weight-bold">
                      ที่อยู่ : {{ datalocation.addloca }} ตำบล
                {{ datalocation.subareal }} อำเภอ {{ datalocation.areal }} จังหวัด
                {{ datalocation.provincel }} {{ datalocation.postalcodel }}
                    </p>
                    <p class="font-weight-bold">
                      โทรศัพท์ : {{ datalocation.tellocation }}
                    </p>
                    
                  </div>
                </v-card-text>
              </div>
            </div>
          </v-card>
          </v-col>

         <v-col cols="12" class="mgt ">
          <v-card color="#C0FCB0"  class=" rounded-xl">
            <div class="d-flex justify-center mb-6">
                
                
                <v-card-title class=" text-h4  mb-15 mt-15">
                  เปลี่ยนรหัสผ่าน
                </v-card-title>
                
                 
              
            
            </div>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </v-card>
</template>

<script>
export default {
  data() {
    return {
      datalocation: {
      nameloca: "สำนักงานกำจัด อบต.สันทรายหลวง",
      licensenumberl: "475-845-8459",
      allowedbyl: "อบต.สันทรายหลวง",
      addloca: "359 ม.4 ",
      subareal: "สันทรายหลวง",
      areal: "สันทราย",
      provincel: "เชียงใหม่",
      postalcodel: "58000",
      tellocation: "065-6588598",
     
      
    },
    };
  },
  methods: {
    selectadd(){
      this.$router.push("/selectadd")
    },
    backmain(){
      this.$router.push("/sewage")
    },
  }
};
</script>
