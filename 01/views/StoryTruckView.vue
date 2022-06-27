<template>
<!-- ประวัติการเรียกใช้บริการรถขนสิ่งปฏิกูล -->
  <div class="storytruck">
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
                      ผู้ขอรับบริการ :  {{ sttruck.namepeople }}
                    </p>

                    <p class="font-weight-bold">
                      ชื่อและประเภทอาคาร : {{ sttruck.buildtype }}
                    </p>

                    <p class="font-weight-bold">
                      ที่อยู่ : {{ sttruck.addresspeople}}
                    </p>

                    <p class="font-weight-bold">
                      โทร  :  {{ sttruck.telpeople}}
                    </p>

                    <p class="font-weight-bold">
                      วันที่ :  {{ sttruck.date }}
                    </p>

                    <p class="font-weight-bold">
                      เวลาเข้า-ออก :  {{ sttruck.time }}
                    </p>

                    <p class="font-weight-bold">
                     ปริมาณสิ่งปฏิกูล :  {{ sttruck.sewagevolume }}
                    </p>

                    <p class="font-weight-bold">
                      หน่วยงาน/ผู้ประกอบการขนสิ่งปฏิกูล : {{ sttruck.nametruck }}
                    </p>

                    <p class="font-weight-bold">
                      หมายเลขอนุญาต : {{sttruck.licensenumbertruck }}
                    </p>

                     <p class="font-weight-bold">
                      อนุญาตโดย : {{sttruck.allowedtruck }}
                    </p>

                    <p class="font-weight-bold">
                      ที่อยู่ : {{ sttruck.addresstruck}}
                    </p>

                     <p class="font-weight-bold">
                      ทะเบียนรถ : {{ sttruck.cartruck}}
                    </p>

                     <p class="font-weight-bold">
                      ชื่อคนขับรถ : {{ sttruck.drivertruck}}
                    </p>

                    <p class="font-weight-bold">
                      โทร  :  {{ sttruck.teltruck}}
                    </p>

                    <p class="font-weight-bold">
                      ชื่อพนักงานเก็บขน : {{ sttruck.employee }}
                    </p>

                    <p class="font-weight-bold">
                      โทร  :  {{ sttruck.telemployee }}
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
      sttruck: {
        namepeople: "ฟ้า เอบีซี",
        buildtype: "บ้านเดี่ยว 20 ชั้น",
        addresspeople: " 95  ม.7  หนองงู  ต.หนองหาร อ.ขนมจีน  จ.เชียงใหม่  58400",
        telpeople: "052-465-4555",
        date:" 10/5/2563 ",
        time:"8.00-9.00",
        sewagevolume:"10  ลูกบาศก์เมตร",
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
    // selectadd(){
    //   this.$router.push("/selectadd")
    // },
    backmain(){
      this.$router.push("/")
    },
  }
};
</script>