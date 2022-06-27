<template>
  <div class="registerlocation">
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
    </v-app-bar>

    <v-row class="mt-1">
      <v-col cols="9">
        <div>
         <v-icon
          color="#08782E"
          class="mr-5"
          x-large
          @click="backmain"
        >
          mdi-arrow-left
        </v-icon> 
        </div>
      </v-col>
      <v-col cols="3">
        <v-row>
          <v-col cols="5">
          <div>
          <v-btn rounded color="#36B833" dark @click="next1"> ประชาชนทั่วไป </v-btn>
        </div>
          </v-col>
          <v-col cols="6">
          <div>
          <v-btn rounded color="#36B833" dark @click="next2"> รถขนสิ่งปฏิกูล </v-btn>
        </div>
          </v-col>
        </v-row>
        </v-col>
    </v-row>

        
    <v-form>
      <v-container>
        <v-row>
          <v-col cols="12" sm="6">
            <v-text-field
              label="ชื่อหน่วยงาน/ผู้ประกอบการกำจัดสิ่งปฏิกูล"
               v-model="namesewage"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="6">
            <v-text-field
              label="หมายเลขอนุญาต"
               v-model="licensenumbersewage"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="12">
            <v-text-field
              label="อนุญาตโดย"
              v-model="allowedsewage"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>

          <v-col cols="12" sm="12">
            <v-text-field
              label="ที่อยู่"
              v-model="addsite"
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

          <v-col cols="12" sm="12">
            <v-text-field
              label="โทรศัพท์"
              v-model="phonenumber"
              filled
              rounded
              dense
            ></v-text-field>
          </v-col>
        </v-row>
      </v-container>
       <v-card-actions>
     <v-btn
      color="error"
      class="mr-4"
      @click="reset"
    >
      CLEAR
    </v-btn>
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
    namesewage: "",
    licensenumbersewage: "",
    allowedsewage: "",
    addsite: " ",
    subarea: "",
    area: "",
    province: "",
    postalcode: "",
    phonenumber: "",
    
}),
methods: {
    backmain(){
      this.$router.push("/login")
    },
    next1(){
      this.$router.push("/registerhome")
    },
    next2(){
      this.$router.push("/registertruck")
    },
    savedata() {
      let value1 = {
        idlogin: this.phonenumber,
        namesewage: this.namesewage,
        license: this.licensenumbersewage,
        allowed: this.allowedsewage,
        telsite: this.phonenumber,
        addsite: this.addsite,
        subarea: this.subarea,
        area: this.area,
        province: this.province,
        postalcode: this.postalcode,
      };
     
      this.$guest_api.post("/insert-register-site", value1).catch((err) => {
        console.log(err);
      });
    },
  }
};

</script>



