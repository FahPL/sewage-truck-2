<template>
  <div class="registerhome">
    <!-- ประชาชนทั่วไป -->
    <v-app-bar
      dark
      height="200px"
      color="#04B640"
      class=""
      style="border-radius: 0px 0px 125px 125px"
    >
      <v-toolbar-title style="margin-left: 30px; padding: auto" class="text-h5"
        >ประชาชนทั่วไป</v-toolbar-title
      >

      <v-spacer></v-spacer>
      <v-app-bar-nav-icon
        x-large
        style="margin-right: auto"
      ></v-app-bar-nav-icon>
    </v-app-bar>

    <v-row class="mt-1">
      <v-col cols="9">
        <div>
          <v-icon color="#08782E" class="mr-5" x-large @click="backmain">
            mdi-arrow-left
          </v-icon>
        </div>
      </v-col>
      <v-col cols="3">
        <v-row>
          <v-col cols="5">
            <div>
              <v-btn rounded color="#36B833" dark @click="next1">
                รถขนสิ่งปฏิกูล
              </v-btn>
            </div>
          </v-col>
          <v-col cols="5">
            <div>
              <v-btn rounded color="#36B833" dark @click="next2">
                สถานที่กำจัด
              </v-btn>
            </div>
          </v-col>
        </v-row>
      </v-col>
    </v-row>

    <v-form ref="form" lazy-validation>
      <v-container>
        <v-row>
          <v-col cols="12" sm="3">
            <v-select
            v-model="prefix"
              :items="item"
              label="คำนำหน้า"
              filled
              rounded
              dense
            ></v-select>
          </v-col>

          <v-col cols="12" sm="5">
            <v-text-field
              label="ชื่อ"
              v-model="fristname"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="4">
            <v-text-field
              label="นามสกุล"
              v-model="lastname"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="12">
            <v-text-field
              label="โทรศัพท์"
              v-model="phoneNumber"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="12">
            <v-text-field
              label="ชื่อและประเภทอาคาร"
              v-model="buildtype"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="12">
            <v-text-field
              label="ที่อยู่"
              v-model="addpeople"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="ตำบล"
              v-model="subarea"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="อำเภอ"
              v-model="area"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="จังหวัด"
              v-model="province"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="รหัสไปรษณีย์"
              v-model="postalcode"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>
        </v-row>
      </v-container>
      <v-card-actions>
        <v-btn color="error" class="mr-4" @click="reset"> CLEAR </v-btn>
        <v-spacer></v-spacer>
        <v-btn
          :disabled="!valid"
          color="success"
          class="mr-4"
          @click="savedata"
        >
          SUMMIT
        </v-btn>
      </v-card-actions>
    </v-form>
  </div>
</template>
<script>
export default {
  data: () => ({
    valid: true,
    fristname: "",
    lastname: "",
    phoneNumber: "",
    buildtype: "",
    addpeople: " ",
    subarea: "",
    area: "",
    province: "",
    postalcode: "",

    prefix: null,
    item: ["นาย", "นางสาว", "นาง"],
  }),
  methods: {
    backmain() {
      this.$router.push("/login");
    },
    next1() {
      this.$router.push("/registertruck");
    },
    next2() {
      this.$router.push("/registerlocation");
    },
    validate() {
      this.$refs.form.validate();
    },
    reset() {
      this.$refs.form.reset();
    },
    savedata() {
      let value1 = {
        idlogin: this.phoneNumber,
        prefix: this.prefix,
        fristname: this.fristname,
        lastname: this.lastname,
        phoneNumber: this.phoneNumber,
        buildtype: this.buildtype,
        addpeople: this.addpeople,
        subarea: this.subarea,
        area: this.area,
        province: this.province,
        postalcode: this.postalcode,
      };
     
      this.$guest_api.post("/insert-register-people", value1).catch((err) => {
        console.log(err);
      });
     
      
    },

  },
};
</script>
