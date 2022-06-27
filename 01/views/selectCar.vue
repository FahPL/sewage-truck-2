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
        >เลือกรถขนสิ่งปฏิกูลที่ทำงาน</v-toolbar-title
      >
    </v-app-bar>
    <v-icon color="#08782E" class="mr-5" x-large @click="backprofile">
      mdi-arrow-left
    </v-icon>
    <v-container>
      <v-row dense v-for="item in truckworking" :key="item.truckworking" >
      
        <v-col cols="12" class="mgt">
          <v-card color="#fff" class="pa-4 text-no-wrap rounded-xl">
            <div class="d-flex align-center">
              <div class="col-10">
                <v-card-text class="text--primary">
                  <div>
                    <p class="font-weight-bold">
                      ทะเบียนรถ : {{ item.namepeople }}
                    </p>
                    
                  </div>
                </v-card-text>
                <v-card class="mx-auto mb-10" max-width="500">
              <div class="d-flex text-center"></div>
              <img src="@/assets/1.png" aspect-ratio="2" />
            </v-card>
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
      truckworking: [
        {
          namepeople: "บน-5846 เชียงใหม่",
          
        },
        {
          namepeople: "พท-4586 เชียงใหม่",
         
        },
        
      ],
       checkbox: true,
    };
  },
  methods: {
    backprofile() {
      this.$router.push("/profilet");
    },
  },
};
</script>
 
<style>
.checkadd{
  border-radius: 50%;
}
</style>