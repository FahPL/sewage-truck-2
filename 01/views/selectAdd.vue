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
        >เลือกที่อยู่</v-toolbar-title
      >
    </v-app-bar>
    <v-icon color="#08782E" class="mr-5" x-large @click="backprofile">
      mdi-arrow-left
    </v-icon>
    <v-container>
      <v-row dense v-for="item in addpfpeople" :key="item.addpfpeople" >
      
        <v-col cols="12" class="mgt">
          <v-card color="#fff" class="pa-4 text-no-wrap rounded-xl">
            <div class="d-flex align-center">
              <div class="col-10">
                <v-card-text class="text--primary">
                  <div>
                    <p class="font-weight-bold">
                      ผู้ขอรับบริการ : {{ item.namepeople }}
                    </p>
                    <p class="font-weight-bold">
                      ชื่อและประเภทอาคาร : {{ item.buildtype }}
                    </p>
                    <p class="font-weight-bold">
                      ที่อยู่ : {{ item.addpeople }} {{ item.citypeople }}
                    </p>
                    <p class="font-weight-bold">
                      โทรศัพท์ : {{ item.telpeople }}
                    </p>
                  </div>
                </v-card-text>
              </div>
              <div class="col-2">
                
                  <v-row>
                  <v-col>
                    <v-card-actions>
                     
  <input class="form-check-input checkadd" type="checkbox" value="" id="flexCheckDefault" >

                    </v-card-actions>
                  </v-col>
                </v-row>
               
                
              </div>
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
      addpfpeople: [
        {
          namepeople: "Frozen Yogurt",
          buildtype: "บ้านเดี่ยว",
          addpeople: "159 ม.4 ",
          citypeople: "เชียงใหม่",
          telpeople: "065-6588598",
        },
        {
          namepeople: "Frozen Yogurt",
          buildtype: "บ้านเดี่ยว",
          addpeople: "159 ม.4 ",
          citypeople: "เชียงใหม่",
          telpeople: "065-6588598",
        },
        {
          namepeople: "Frozen Yogurt",
          buildtype: "บ้านเดี่ยว",
          addpeople: "159 ม.4 ",
          citypeople: "เชียงใหม่",
          telpeople: "065-6588598",
        },
      ],
       checkbox: true,
    };
  },
  methods: {
    backprofile() {
      this.$router.push("/profilep");
    },
  },
};
</script>
 
<style>
.checkadd{
  border-radius: 50%;
}
</style>