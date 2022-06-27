<template>
  <div class="recordtruck">
    <!-- บันทึกของรถขนสิ่งปฏิกูล -->
    
    <v-app-bar
      dark
      height="200px"
      color="#04B640"
      class=""
      style="border-radius: 0px 0px 125px 125px"
    >
      <v-toolbar-title style="margin-left: 30px; padding: auto" class="text-h5"
        >บันทึกของผู้ขนสิ่งปฏิกูล</v-toolbar-title
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
                  <div>

                    <p class="font-weight-bold">
                      หน่วยงาน/ผู้ประกอบการขนสิ่งปฏิกูล : {{ rctruckone.nametruck }}
                    </p>

                    <p class="font-weight-bold">
                      หมายเลขอนุญาต : {{ rctruckone.licensenumbertruck }}
                    </p>

                     <p class="font-weight-bold">
                      อนุญาตโดย : {{ rctruckone.allowedtruck }}
                    </p>

                    <p class="font-weight-bold">
                      ที่อยู่ : {{ rctruckone.addresstruck}}
                    </p>

                     <p class="font-weight-bold">
                      ทะเบียนรถ : {{ rctruckone.cartruck}}
                    </p>

                     <p class="font-weight-bold">
                      ชื่อคนขับรถ : {{ rctruckone.drivertruck}}
                    </p>

                    <p class="font-weight-bold">
                      โทร  :  {{ rctruckone.teltruck}}
                    </p>

                    <p class="font-weight-bold">
                      ชื่อพนักงานเก็บขน : {{ rctruckone.employee }}
                    </p>

                    <p class="font-weight-bold">
                      โทร  :  {{ rctruckone.telemployee }}
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
                  <div >

                    
                    <p class="font-weight-bold">
                      ผู้ขอรับบริการ :  {{ rctrucktwo.namepeople }}
                    </p>

                    <p class="font-weight-bold">
                      ชื่อและประเภทอาคาร : {{ rctrucktwo.buildtype }}
                    </p>

                    <p class="font-weight-bold">
                      ที่อยู่ : {{ rctrucktwo.addresspeople}}
                    </p>

                    <p class="font-weight-bold">
                      โทร  :  {{ rctrucktwo.telpeople}}
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
              placeholder="Dense & Rounded"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="เวลา ออก"
              placeholder="Dense & Rounded"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="วันที่"
              placeholder="Dense & Rounded"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="ปริมาณสิ่งปฏิกูล(ลูกบาศก์เมตร)"
              placeholder="Dense & Rounded"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="ลงชื่อ ผู้ขอรับบริการ"
              placeholder="Dense & Rounded"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="ลงชื่อ ผู้ขนสิ่งปฏิกูล"
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
      rctruckone: {
        
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
      rctrucktwo: {
        namepeople: "ฟ้า เอบีซี",
        buildtype: "บ้านเดี่ยว 20 ชั้น",
        addresspeople: " 95  ม.7  หนองงู  ต.หนองหาร อ.ขนมจีน  จ.เชียงใหม่  58400",
        telpeople: "052-465-4555",
        date:" 10/5/2563 ",
        time:"8.00-9.00",
        sewagevolume:"10  ลูกบาศก์เมตร",
        
      },

    };
  },
  methods: {
  
    backmain(){
      this.$router.push("/truck")
    },
  }
};
</script>


