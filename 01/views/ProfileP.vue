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
        >โปรไฟล์ครัวเรือน</v-toolbar-title
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
                  <div v-for="item in people" :key="item.people">
                    
                    <p class="font-weight-bold">
                      ผู้ขอรับบริการ : {{ item.prefix }} {{ item.firstname }} {{ item.lastname }} 
                    </p>

                    <p class="font-weight-bold">
                      โทรศัพท์ : {{ item.tel_people }}
                    </p>
                  </div>
                </v-card-text>
              </div>
            </div>
          </v-card>
          </v-col>

<v-col cols="12" class="mt-1">
          <v-card color="#C0FCB0" class="pa-4 text-no-wrap rounded-xl mb-6" @click="selectadd">
            <div class="d-flex align-center ">
              <div class="col-12">
                <v-card-text class="text--primary">
                  <div v-for="item in addpeople" :key="item.addpeople">
                    <p class="font-weight-bold">
                      ชื่อและประเภทอาคาร : {{ item.building_type }}
                    </p>
                    <p class="font-weight-bold">
              
                      ที่อยู่ {{item.add_people}} ตำบล {{item.subarea_people}} อำเภอ {{item.area_people}} 
                      จังหวัด {{item.province_people}} {{item.postalcode_people}}
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
      people: [],
      
      addpeople:[],
    };
  },
  created() {
    this.People();
    this.Addpeople();
  },
  methods: {
    async People() {
      let result = await this.$guest_api.get("/get-namepeople").catch((err) => {
        console.log(err);
      });
      this.text = result.data;
      this.people = this.text.data;
    },
    async Addpeople() {
      let result1 = await this.$guest_api.get("/get-addpeople").catch((err) => {
        console.log(err);
      });
      this.text1 = result1.data;
      this.addpeople = this.text1.data;
    },
    selectadd(){
      this.$router.push("/selectadd")
    },
    backmain(){
      this.$router.push("/")
    },
    recordtruck(){
      this.$router.push("/recordtruck")
    },
  }
};
</script>
