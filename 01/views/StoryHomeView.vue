<template>
<!-- ประวัติการเรียกใช้บริการครัวเรือน -->
  <div class="storyhome">
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
                      วันที่ :  {{ sthome.date }}
                    </p>

                    <p class="font-weight-bold">
                     ปริมาณสิ่งปฏิกูล :  {{ sthome.sewagevolume }}
                    </p>

                    <p class="font-weight-bold">
                      เวลาเข้าสูบ :  {{ sthome.timein }}
                    </p>

                    <p class="font-weight-bold">
                      เวลาออก :  {{ sthome.timeout }}
                    </p>

                    <p class="font-weight-bold">
                      หน่วยงาน/ผู้ประกอบการขนสิ่งปฏิกูล : {{ sthome.nametruck }}
                    </p>
                    <p class="font-weight-bold">
                      โทร  :  {{ sthome.teltrucksw}}
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
      sthome: {
        date:"14 มีนาคม 2565",
        sewagevolume:"100ลูกบาศก์เมตร",
        timein:"10.20 น.",
        timeout:"11.00 น.",
        nametruck:"ส.ส้วมสุขสันต์",
        teltrucksw:"โทร : 052-465-4555",
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