<template>
  <div class="changepassword">
    <!-- เปลี่ยนรหัสผ่าน -->
    <v-app-bar
      dark
      height="200px"
      color="#04B640"
      class=""
      style="border-radius: 0px 0px 125px 125px"
    >
      <v-toolbar-title style="margin-left: 30px; padding: auto" class="text-h5"
        >หน่วยงานกำจัดสิ่งปฏิกูล</v-toolbar-title
      >

      <v-spacer></v-spacer>
      <v-app-bar-nav-icon
        x-large
        style="margin-right: auto"
      ></v-app-bar-nav-icon>
    </v-app-bar>

    <v-icon
          color="#08782E"
          class="mr-5"
          x-large
          @click="backmain"
        >
          mdi-arrow-left
        </v-icon>

    <v-form ref="form" v-model="form" class="pa-4 pt-6">
      <v-container>
        <v-row>
          <!-- <v-col cols="12" sm="12">
            <v-text-field
              v-model="password"
              :rules="[rules.password, rules.length(10)]"
              filled
              rounded
              dense
              color="green"
              counter="10"
              label="รหัสผ่านปัจจุบัน"
              style="min-height: 96px"
              type="password"
            ></v-text-field>
          </v-col> -->

          <v-col cols="12" sm="12">
            <v-text-field
              v-model="phone"
              :rules="[rules.phone, rules.length()]"
              filled
              rounded
              dense
              color="green"
              label="รหัสผ่านปัจจุบัน"
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
              label="รหัสผ่านใหม่"
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="12">
            <v-text-field
              v-model="email"
              :rules="[rules.email, rules.length()]"
              filled
              rounded
              dense
              color="green"
              label="พิมพ์รหัสผ่านใหมอีกครั้ง"
              type="email"
            ></v-text-field>
          </v-col>

          <v-checkbox
            v-model="checkbox"
            :rules="[(v) => !!v || 'You must agree to continue!']"
            label="คุณยืนยันการเปลี่ยนแปลง ?"
            required
            color="green"
          ></v-checkbox>
        </v-row>
      </v-container>
    </v-form>
    <v-divider></v-divider>
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
    <v-dialog v-model="dialog" absolute max-width="400" persistent>
      <v-card>
        <v-card-title class="text-h5 grey lighten-3"> Legal </v-card-title>
        <v-card-text>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
          minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat. Duis aute irure dolor in
          reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
          pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
          culpa qui officia deserunt mollit anim id est laborum.
        </v-card-text>
        <v-divider></v-divider>
        <v-card-actions>
          <v-btn text @click="(agreement = false), (dialog = false)">
            No
          </v-btn>
          <v-spacer></v-spacer>
          <v-btn
            class="white--text"
            color="green"
            @click="(agreement = true), (dialog = false)"
          >
            Yes
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </div>
</template>
<script>
export default {
  data: () => ({
    agreement: false,
    dialog: false,
    email: undefined,
    form: false,
    isLoading: false,
    password: undefined,
    phone: undefined,
    rules: {
      // email: (v) => !!(v || "").match() || "Please enter a valid password",
      // password: (v) => !!(v || "").match() || "Please enter a valid password",
      length: (len) => (v) =>
        (v || "").length >= len || `กรุณาใส่รหัส `,

      // password: v => !!(v || '').match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(_|[^\w])).+$/) ||
      //   'Password must contain an upper case letter, a numeric character, and a special character',
      // required: v => !!v || 'This field is required',
    },
  }),

  methods: {
    
    backmain(){
      this.$router.push("/")
    },
  }
};
</script>
