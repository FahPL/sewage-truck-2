<template>
<!-- ประวัติการเรียกใช้บริการกำจัดสิ่งปฏิกูล -->
  <div class="storylocation">
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
        >ประวัติการเรียกใช้บริการ</v-toolbar-title
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
          <v-card color="#FAFAFA" class="pa-4 text-no-wrap rounded-xl mb-6">
            <div class="d-flex align-center">
              <div class="col-12">
                <v-card-text class="text--primary">
                  <div>
                    <p class="font-weight-bold">
                      หน่วยงาน/ผู้ประกอบการขนสิ่งปฏิกูล : {{ stlocation.nametruck }}
                    </p>

                    <p class="font-weight-bold">
                      หมายเลขอนุญาต : {{ stlocation.licensenumbertruck }}
                    </p>

                     <p class="font-weight-bold">
                      อนุญาตโดย : {{ stlocation.allowedtruck }}
                    </p>

                     <p class="font-weight-bold">
                      ที่อยู่ : {{ stlocation.addresstruck}}
                    </p>

                     <p class="font-weight-bold">
                      ทะเบียนรถ : {{ stlocation.cartruck}}
                    </p>

                     <p class="font-weight-bold">
                      ชื่อคนขับรถ : {{ stlocation.drivertruck}}
                    </p>

                    <p class="font-weight-bold">
                      โทร  :  {{ stlocation.teltruck}}
                    </p>

                    <p class="font-weight-bold">
                      ชื่อพนักงานเก็บขน : {{ stlocation.employee }}
                    </p>

                    <p class="font-weight-bold">
                      โทร  :  {{ stlocation.telemployee }}
                    </p>

                    <p class="font-weight-bold">
                      หน่วยงาน/ผู้ประกอบการกำจัดสิ่งปฏิกูล  : {{ stlocation.nameloca }}
                    </p>

                    <p class="font-weight-bold">
                      หมายเลขอนุญาต :  {{ stlocation.licensenumberloca }}
                    </p>

                    <p class="font-weight-bold">
                      อนุญาตโดย :  {{ stlocation.allowedloca }}
                    </p>

                    <p class="font-weight-bold">
                      ที่อยู่ :   {{ stlocation.addressloca }}
                    </p>

                    <p class="font-weight-bold">
                      โทร :   {{ stlocation.telloca }}
                    </p>

                    <p class="font-weight-bold">
                      วันที่ :  {{ stlocation.date }}
                    </p>

                    <p class="font-weight-bold">
                      เวลาเข้า-ออก :  {{ stlocation.time }}
                    </p>

                    <p class="font-weight-bold">
                     ปริมาณสิ่งปฏิกูล :  {{ stlocation.sewagevolume }}
                    </p>

                    <p class="font-weight-bold">
                      ผู้ขอรับบริการ :  {{ stlocation.namepeople }}
                    </p>

                  </div>
                </v-card-text>
              </div>
            </div>
          </v-card>
          </v-col>
      </v-row>
    </v-container>
  </v-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      stlocation: {
        nametruck:"ส.ส้วมสุขสันต์",
        licensenumbertruck:"1234567890",
        allowedtruck:"อบต.ส้มตำ",
        addresstruck:"95  ม.7  หนองงู  ต.หนองหาร อ.ขนมจีน  จ.เชียงใหม่  58400",
        cartruck:"บพ-2568 เชียงใหม่",
        drivertruck:"นายดี สมคิด",
        teltruck:" 061-989-7894",
        employee:"นายด๋อย สมชาติ ",
        telemployee:" 061-989-7894",
        nameloca:" โรงเก็บขี้นายจำเนียน",
        licensenumberloca:"2525252525",
        allowedloca:"อบต.หนองหาร",
        addressloca:"95  ม.7  หนองงู  ต.หนองหาร อ.ขนมจีน  จ.เชียงใหม่  58400",
        telloca:"052-465-4555",
        date:" 10/5/2563 ",
        time:"8.00-9.00",
        sewagevolume:"10  ลูกบาศก์เมตร",
        namepeople: "ฟ้า เอบีซี",  
      },
    };
  },
  methods: {
    // selectadd(){
    //   this.$router.push("/selectadd")
    // },
    backmain(){
      this.$router.push("/")
    },
  }
};
</script>