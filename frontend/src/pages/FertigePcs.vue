<template>
  <div class="Uebersicht">
    <h2 :style="{marginTop: ['20px']}"> Durchstöbere bereits fertige PC Konfigurationen</h2>
    <br><br>
  </div>


  <select class="form-select" v-model="selectedPC" >
    <option value="0"> Wählen Sie einen vorkonfigurierten PC </option>
    <option v-for="item in pcs" :key="item.configuration_id" v-bind:value="item.configuration_id">
        {{ item.title }}
    </option>
  </select>
  <br><br><br>

  <div class="specifications" v-if="specification">
    <ConfigurationDescription :name="specification.title" :description="specification.configuration_description" :cpu="specification.cpu"
              :gpu="specification.gpu" :ram="specification.ram" :mainboard="specification.mainboard" :disk_storage="specification.disk_storage"
              :price="specification.price">
    </ConfigurationDescription>
  </div>

</template>


<script>
import ConfigurationDescription from "@/components/ConfigurationDescription";

import axios from "axios";

export default {
  components: {
    ConfigurationDescription
  },
  data() {
    return {
      pcs: [],
      selectedPC: 0,
      specification: null,
    }
  },
  watch: {
    selectedPC(newSelectedPc) {
      this.specification= this.pcs[newSelectedPc - 1]
    }
  },
  created() {
  //  `https://backend-pc-konfigurator.herokuapp.com/api/configuration`
    axios.get(`http://localhost:5000/api/configuration`)
        .then(response => {
          this.pcs = response.data.config_arr;
          console.log("response.data.config_arr", response.data.config_arr)
        })
        .catch(error => {
          console.error("Error occurred", error)
        })
  },
}

</script>


<style scoped>


</style>