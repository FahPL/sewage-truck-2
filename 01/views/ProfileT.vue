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
        >โปรไฟล์รถ</v-toolbar-title
      >
    </v-app-bar>
    <v-icon color="#08782E" class="mr-5" x-large @click="backmain">
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
                      หน่วยงาน/ชื่อผู้ประกอบการขนสิ่งปฏิกูล:
                      {{ datacar.namecar }}
                    </p>

                    <p class="font-weight-bold">
                      หมายเลขอนุญาต : {{ datacar.licensenumberc }}
                    </p>
                    <p class="font-weight-bold">
                      อนุญาตโดย : {{ datacar.allowedbyc }}
                    </p>
                    <p class="font-weight-bold">
                      ที่อยู่ : {{ datacar.addcar }} ตำบล
                      {{ datacar.subareac }} อำเภอ {{ datacar.areac }} จังหวัด
                      {{ datacar.provincec }} {{ datacar.postalcodec }}
                    </p>
                    <p class="font-weight-bold">
                      โทรศัพท์ : {{ datacar.telcar }}
                    </p>
                  </div>
                </v-card-text>
              </div>
            </div>
          </v-card>
        </v-col>
        <v-col cols="12" class="mgt">
          <v-card color="#C0FCB0" class="rounded-xl" @click="selectcar">
            <v-row>
              <v-col cols="8">
                <div class="d-flex justify-center mb-6">
                  <v-card-title class="text-h4 mb-15 mt-15">
                    รถขนสิ่งปฏิกูล
                  </v-card-title>
                </div>
              </v-col>
              <v-col cols="4">
                <div>
                  <v-icon color="black" class="mr-5" size="200">
                    mdi-truck
                  </v-icon>
                </div>
              </v-col>
            </v-row>
          </v-card>
        </v-col>

        <v-col cols="12" class="mt-10">
          <v-card color="#C0FCB0" class="rounded-xl " @click="selectdriver">
            <v-row>
              <v-col cols="8">
                <div class="d-flex justify-center mb-6">
                  <v-card-title class="text-h4 mb-15 mt-15">
                    พนักงานขับรถ
                  </v-card-title>
                </div>
              </v-col>
              <v-col cols="4">
                <div>
                  <v-icon color="black" class="mr-5" size="200">
                    mdi-steering
                  </v-icon>
                </div>
              </v-col>
            </v-row>
          </v-card>
        </v-col>
        <v-col cols="12" class="mt-10">
          <v-card color="#C0FCB0" class="rounded-xl" @click="selectporter">
            <v-row>
              <v-col cols="8">
                <div class="d-flex justify-center mb-6">
                  <v-card-title class="text-h4 mb-15 mt-15">
                    พนักงานเก็บขน
                  </v-card-title>
                </div>
              </v-col>
              <v-col cols="4">
                <div>
                  <v-icon color="black" class="mr-5" size="200">
                   mdi-account-hard-hat
                  </v-icon>
                </div>
              </v-col>
            </v-row>
          </v-card>
        </v-col>
        <v-col cols="12" class="mt-8">
          <v-card color="#C0FCB0" class="rounded-xl">
            <div class="d-flex justify-center mb-6">
              <v-card-title class="text-h4 mb-15 mt-15">
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
      datacar: {
        namecar: "ส.ส้วมสุขสันต์",
        licensenumberc: "845-845-8459",
        allowedbyc: "อบต.สันทรายหลวง",
        addcar: "359 ม.4 ",
        subareac: "สันทรายหลวง",
        areac: "สันทราย",
        provincec: "เชียงใหม่",
        postalcodec: "58000",
        telcar: "065-6588598",
        carregistration: "บน-5864 เชียงใหม่",
        drivername: "นายชัย คำ",
        drivertel: "068-5948621",
        portername: "นายสุข เสมอ",
        portertel: "098-5986589",
      },
    };
  },
  methods: {
    selectadd() {
      this.$router.push("/selectadd");
    },
    backmain() {
      this.$router.push("/truck");
    },
    selectcar() {
      this.$router.push("/selectc");
    },
    selectdriver() {
      this.$router.push("/selectd");
    },
    selectporter() {
      this.$router.push("/selectp");
    },
  },
};
</script>
<style></style>
