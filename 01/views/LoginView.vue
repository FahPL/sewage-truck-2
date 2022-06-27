<template>
  <div class="login">
    <!-- ลงชื่อเข้าใช้ -->
    <v-app-bar
      dark
      height="200px"
      color="#04B640"
      class=""
      style="border-radius: 0px 0px 125px 125px"
    >
      <v-toolbar-title style="margin-left: 30px; padding: auto" class="text-h5"
        >ลงชื่อเข้าใช้</v-toolbar-title
      >

      <v-spacer></v-spacer>
    </v-app-bar>

    <v-icon color="#08782E" class="mr-5" x-large @click="backmain">
      mdi-arrow-left
    </v-icon>

    <v-form ref="form" v-model="form" class="pa-4 pt-6">
      <v-container>
        <v-row>
          <v-col cols="12" sm="12">
            <v-text-field
              v-model="phone"
              :rules="[rules.phone, rules.length(10)]"
              filled
              rounded
              dense
              color="green"
              counter="10"
              label="เบอร์โทรศัพท์/เลขหน่วยงาน"
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="12">
            <v-text-field
              v-model="phone"
              :rules="[rules.phone, rules.length()]"
              filled
              rounded
              dense
              color="green"
              label="รหัสผ่าน"
            ></v-text-field>
          </v-col>

          <!-- <v-col cols="12" sm="12">
            <v-text-field
              v-model="password"
              :rules="[rules.password, rules.length(10)]"
              filled
              rounded
              dense
              color="green"
              counter="10"
              label="รหัสผ่าน"
              style="min-height: 96px"
              type="password"
            ></v-text-field>
          </v-col> -->
        </v-row>
      </v-container>
    </v-form>

    <v-divider></v-divider>
    <div class="text-center mt-3">
      <v-btn rounded color="green" dark> ลงชื่อเข้าใช้ </v-btn>
    </div>

    <div class="d-flex justify-center mb-6 mt-3">
      <div>
        <p class="font-weight-regular">ไม่มีบัญชี ?</p>
        <p></p>
      </div>
      <div>
        <p class="text-decoration-underline fontcolor" @click="registerhome">
          สมัคร
        </p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data: () => ({
    agreement: false,
    form: false,
    isLoading: false,
    password: undefined,
    phone: undefined,
    rules: {
      length: (len) => (v) => (v || "").length >= len || `กรุณาใส่รหัส`,
      //   email: (v) => !!(v || "").match() || "Please enter a valid email",
      // password: (v) =>
      //   !!(v || "").match(
      //     /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(_|[^\w])).+$/
      //   ) ||
      //   "Password must contain an upper case letter, a numeric character, and a special character",
      // required: (v) => !!v || "This field is required",
    },
  }),
  methods: {
    registerhome() {
      this.$router.push("/registerhome");
    },
    backmain() {
      this.$router.push("/");
    },
  },
};
</script>

<style>
.fontcolor{
  color: green;
}
</style>
