<template>
<!-- บันทึกของผู้กำจัดสิ่งปฏิกูล -->
  <div class="recordlocation">
  <v-app-bar
      dark
      height="200px"
      color="#04B640"
      class=""
      style="border-radius: 0px 0px 125px 125px"
    >
      <v-toolbar-title style="margin-left: 30px; padding: auto" class="text-h5"
        >บันทึกของผู้กำจัดสิ่งปฏิกูล</v-toolbar-title
      >
    </v-app-bar>

     <v-icon color="#08782E" class="mr-5" x-large @click="backmain">
      mdi-arrow-left
    </v-icon>


    <v-container>
      <v-row dense>
        <v-col cols="12" class="mgt">
          <v-card color="#FAFAFA" class="pa-4 text-no-wrap rounded-xl mb-6">
            <div class="d-flex align-center">
              <div class="col-12">
                <v-card-text class="text--primary">
                  <div >

                    
                    <p class="font-weight-bold">
                      หน่วยงาน/ผู้ประกอบการกำจัดสิ่งปฏิกูล  : {{ rclocationone.nameloca }}
                    </p>

                    <p class="font-weight-bold">
                      หมายเลขอนุญาต :  {{ rclocationone.licensenumberloca }}
                    </p>

                    <p class="font-weight-bold">
                      อนุญาตโดย :  {{ rclocationone.allowedloca }}
                    </p>

                    <p class="font-weight-bold">
                      ที่อยู่ :   {{ rclocationone.addressloca }}
                    </p>

                    <p class="font-weight-bold">
                      โทร :   {{ rclocationone.telloca }}
                    </p>

                   
                  </div>
                </v-card-text>
              </div>
            </div>
          </v-card>
          </v-col>
      </v-row>
    </v-container>
    
    <v-container>
      <v-row dense>
        <v-col cols="12" class="mgt">
          <v-card color="#FAFAFA" class="pa-4 text-no-wrap rounded-xl mb-6">
            <div class="d-flex align-center">
              <div class="col-12">
                <v-card-text class="text--primary">
                  <div>

                    <p class="font-weight-bold">
                      หน่วยงาน/ผู้ประกอบการขนสิ่งปฏิกูล : {{ rclocationtwo.nametruck }}
                    </p>

                    <p class="font-weight-bold">
                      หมายเลขอนุญาต : {{ rclocationtwo.licensenumbertruck }}
                    </p>

                     <p class="font-weight-bold">
                      อนุญาตโดย : {{ rclocationtwo.allowedtruck }}
                    </p>

                    <p class="font-weight-bold">
                      ที่อยู่ : {{ rclocationtwo.addresstruck}}
                    </p>

                     <p class="font-weight-bold">
                      ทะเบียนรถ : {{ rclocationtwo.cartruck}}
                    </p>

                     <p class="font-weight-bold">
                      ชื่อคนขับรถ : {{ rclocationtwo.drivertruck}}
                    </p>

                    <p class="font-weight-bold">
                      โทร  :  {{ rclocationtwo.teltruck}}
                    </p>

                    <p class="font-weight-bold">
                      ชื่อพนักงานเก็บขน : {{ rclocationtwo.employee }}
                    </p>

                    <p class="font-weight-bold">
                      โทร  :  {{ rclocationtwo.telemployee }}
                    </p> 
                    
                  </div>
                </v-card-text>
              </div>
            </div>
          </v-card>
          </v-col>
      </v-row>
    </v-container>


     <v-form>
      <v-container>
        <v-row>
          <v-col cols="12" sm="6">
            <v-text-field
              label="เวลา เข้า"
               
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="เวลา ออก"
            
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="วันที่"
            
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

           <v-col cols="12" sm="6">
            <v-text-field
              label="ปริมาณสิ่งปฏิกูล(ลูกบาศก์เมตร)"
            
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="12">
            <v-text-field
              label="รายชื่อผู้ขอรับบริการ"
             
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>


          <v-col cols="12" sm="6">
            <v-text-field
              label="ลงชื่อ ผู้ขนสิ่งปฏิกูล"
         
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="ลงชื่อ สถานที่กำจัด"
               placeholder="Dense & Rounded"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

        </v-row>
      </v-container>
    </v-form>

    

    <v-card-actions>
      <v-btn text @click="$refs.form.reset()"> Clear </v-btn>
      <v-spacer></v-spacer>
      <v-btn
        :disabled="!form"
        :loading="isLoading"
        class="white--text"
        color="green"
        depressed
      >
        Submit
      </v-btn>
    </v-card-actions>
  </div>
</template>
<script>
export default {
  data() {
    return {
       rclocationone: {
        nameloca:" โรงเก็บขี้นายจำเนียน",
        licensenumberloca:"2525252525",
        allowedloca:"อบต.หนองหาร",
        addressloca:"95  ม.7  หนองงู  ต.หนองหาร อ.ขนมจีน  จ.เชียงใหม่  58400",
        telloca:"052-465-4555",

      },
      rclocationtwo: {
        
        nametruck:"ส.ส้วมสุขสันต์",
        licensenumbertruck:"1234567890",
        allowedtruck:"อบต.ส้มตำ",
        addresstruck:"95  ม.7  หนองงู  ต.หนองหาร อ.ขนมจีน  จ.เชียงใหม่  58400",
        cartruck:"บพ-2568 เชียงใหม่",
        drivertruck:"นายดี สมคิด",
        teltruck:" 061-989-7894",
        employee:"นายด๋อย สมชาติ ",
        telemployee:" 061-989-7894",

      },

    };
  },
  methods: {
    backmain(){
      this.$router.push("/sewage")
    },
  }
};
</script>






