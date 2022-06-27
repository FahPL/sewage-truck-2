<template>
  <div>
    <v-app-bar
      dark
      height="200px"
      color="#04B640"
      class=""
      style="border-radius: 0px 0px 125px 125px"
    >
      <v-toolbar-title
        style="margin-left: 30px; padding: auto"
        class="text-h5 yexy-center"
        >บริการเรียกใช้รถขนสิ่งปฏิกูล</v-toolbar-title
      >

  
    </v-app-bar>
    <v-icon color="#08782E" class="mr-5" x-large @click="backmain">
      mdi-arrow-left
    </v-icon>
    <v-container>
      <v-card color="#04B640">
        <v-col>
          <v-row class="text-center ">
            <v-card-text>
              <p class="font-weight-bold text-h3 mt-2 fontcolors">ข้อมูลรถขนสิ่งปฏิกูล</p>
            </v-card-text>
          </v-row>
          <v-row>
            <v-card-text class="ml-12 fontcolors" v-for="item in truck" :key="item.truck">
              <p class="font-weight-bold" >
                หน่วยงาน/ชื่อผู้ประกอบการรถขนสิ่งปฏิกูล :
                {{ item.nametruck }}
              </p>
              <p class="font-weight-bold ">
                หมายเลขอนุญาต : {{ item.licence_truck }}
              </p>
              <p class="font-weight-bold">
                อนุญาตโดย : {{ item.allowedby_truck }}
              </p>
              <p class="font-weight-bold">
                ที่อยู่ : {{ item.add_truck }} ตำบล
                {{ item.subarea_truck }} อำเภอ {{ item.area_truck }} จังหวัด
                {{ item.province_truck }} {{ item.postalcode_truck }}
              </p>
              <p class="font-weight-bold">โทรศัพท์ : {{ item.tel_truck }}</p>
              <p class="font-weight-bold">
                ทะเบียนรถ : {{ licence.truck_licence }}
              </p>
              <p class="font-weight-bold">
                ชื่อพนักงานขับรถ : {{ driver.driver_name }}
              </p>
              <p class="font-weight-bold">
                โทรศัพท์ : {{ driver.tel_driver }}
              </p>
              <p class="font-weight-bold">
                ชื่อพนักงานเก็บขน : {{ porter.name_porter }}
              </p>
              <p class="font-weight-bold">
                โทรศัพท์ : {{ porter.tel_porter }}
              </p>
            </v-card-text>
          </v-row>
          <v-row>
            <v-card-text class="text--primary">
              <p class="font-weight-bold text-center text-h5 fontcolors">
                ภาพรถขนสิ่งปฏิกูล :
              </p>
            </v-card-text>
          </v-row>
          <v-row class="text-center">
            <v-card class="mx-auto mb-10" max-width="500">
              <div class="d-flex text-center"></div>
              <img src="@/assets/1.png" aspect-ratio="2" />
            </v-card>
          </v-row>
        </v-col>
      </v-card>
    </v-container>
  </div>
</template>

<script>
export default {
  data: () => ({
    truck: [],
    licence:[],
    driver:[],
    porter:[],
  }),
   created() {
    this.Truckdata();
    this.Licencedata();
    this.Driverdata();
    this.Porterdata();

  },
  methods: {
    backmain() {
      this.$router.push("/2");
    },
    async Truckdata() {
      let result = await this.$guest_api.get("/get-truckdata").catch((err) => {
        console.log(err);
      });
      this.text = result.data;
      this.truck = this.text.data;
    },
    async Licencedata() {
      let result = await this.$guest_api.get("/get-licence").catch((err) => {
        console.log(err);
      });
      this.text = result.data;
      this.licence = this.text.data;
    },
    async Driverdata() {
      let result = await this.$guest_api.get("/get-driver").catch((err) => {
        console.log(err);
      });
      this.text = result.data;
      this.driver = this.text.data;
    },
    async Porterdata() {
      let result = await this.$guest_api.get("/get-porter").catch((err) => {
        console.log(err);
      });
      this.text = result.data;
      this.porter = this.text.data;
    },
  },
};
</script>

<style>
.fontcolors{
  color: white;
}
</style>