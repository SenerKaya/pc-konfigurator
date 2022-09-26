<template>

  <div class="PcselbstKonfigurieren">
      <h2 :style="{marginTop: ['20px']}">Erstelle deine eigene PC-Konfiguration</h2>
      <br><br>
    <div class="table-responsive-sm">
      <table class="table">
        <tbody>
        <tr>
          <th scope="row"><span> <span class="required">*</span>Name </span></th>
          <td>
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Deine Konfiguration 001" v-model="name">
          </td>
        </tr>
        <tr>
          <th scope="row"><span> Beschreibung </span></th>
          <td>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Schreibe zu jeder deiner Konfigurationen eine kurze Beschreibung - Wofür eignet sich diese besonders gut?" v-model="description"></textarea>
          </td>
        </tr>
          <tr>
            <th scope="row"><span> <span class="required">*</span>CPU </span></th>
            <td>
              <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                {{ cpu_selected }}
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a v-for="item in cpu" :key="item" class="dropdown-item" href="#" @click="changeCPU(item)">{{ item }}</a>
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row"><span> <span class="required">*</span>Mainboard </span></th>
            <td >
              <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                {{ mainboard_selected }}
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a v-for="item in mainboard" :key="item" class="dropdown-item" href="#" @click="changeMain(item)">{{ item }}</a>
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row"><span> <span class="required">*</span>Ram </span></th>
            <td >
              <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                {{ ram_selected }}
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a v-for="item in ram" :key="item" class="dropdown-item" href="#" @click="changeRAM(item)">{{ item }}</a>
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row"><span> <span class="required">*</span>Grafikkarte </span></th>
            <td >
              <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                {{ gpu_selected }}
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a v-for="item in gpu" :key="item" class="dropdown-item" href="#" @click="changeGPU(item)">{{ item }}</a>
              </div>
            </td>
          </tr>
          <tr>
            <th scope="row"><span> <span class="required">*</span>Festplatte </span></th>
            <td >
              <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                {{ disk_storage_selected }}
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a v-for="item in disk_storage" :key="item" class="dropdown-item" href="#" @click="changeDisk(item)">{{ item }}</a>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
      <span class="required" :style="{fontSize: ['12px'], marginLeft: ['13px']}">* Pflichtfelder</span>
    </div>
   <div class="configuration-btn-box">
     <button class="btn btn-primary configuration-btn" type="button"
             :disabled="cpu_selected == 'CPU auswählen' || gpu_selected == 'Grafikkarte auswählen' || ram_selected == 'RAM auswählen' ||
             mainboard_selected == 'Mainboard auswählen' || disk_storage_selected == 'Festplatte auswählen'" @click="showConfiguration()" v-show="!show_config">
       Konfiguration anzeigen</button>
   </div>
   <div>
         <ConfigurationDescription :cpu="cpu_selected"
                                   :gpu="gpu_selected" :ram="ram_selected" :mainboard="mainboard_selected" :disk_storage="disk_storage_selected"
                                   :name="name" :description="description" v-show="show_config">
         </ConfigurationDescription>
   </div>
  </div>

</template>

<script>
import axios from "axios";
import ConfigurationDescription from "@/components/ConfigurationDescription";

export default {
  name: "PcSelbstKonfigurieren",
  components: {
    ConfigurationDescription
  },
  data() {
    return {
      cpu: [],
      gpu: [],
      ram: [],
      mainboard: [],
      disk_storage: [],
      cpu_selected: "CPU auswählen",
      gpu_selected: "Grafikkarte auswählen",
      ram_selected: "RAM auswählen",
      mainboard_selected: "Mainboard auswählen",
      disk_storage_selected: "Festplatte auswählen",
      disable_display: true,
      show_config: false,
      name: "",
      description: "",
    }
  },
  created() {
   // url = 'https://backend-pc-konfigurator.herokuapp.com'
    const url = 'http://localhost:5000'
    const promise1 = axios.get(url + '/api/cpu');
    const promise2 = axios.get(url + '/api/gpu');
    const promise3 = axios.get(url + '/api/ram');
    const promise4 = axios.get(url + '/api/motherboard');
    const promise5 = axios.get(url + '/api/disk_storage');

    Promise.all([promise1, promise2, promise3, promise4, promise5]).then( (values) => {
      console.log(values);
      this.cpu =  [...new Set(values[0].data.result)]
      this.gpu =  [...new Set(values[1].data.result)].filter(function(item) {
        if(item != 'Integrated graphics') {
          return item;
        }
      })
      this.ram =  [...new Set(values[2].data.result)]
      this.mainboard =  [...new Set(values[3].data.result)]
      console.log(this.mainboard)
      this.disk_storage =  [...new Set(values[4].data.result)]
    });
  },
  methods: {
    changeCPU(option) {
      this.cpu_selected = option
      this.show_config = false;
    },
    changeGPU(option) {
      this.gpu_selected = option
    },
    changeRAM(option) {
      this.ram_selected = option
    },
    changeMain(option) {
      this.mainboard_selected = option
      this.show_config = false;
    },
    changeDisk(option) {
      this.disk_storage_selected = option
    },
    showConfiguration() {
      this.show_config = true;
    },
  }
};
</script>

<style scoped>
.table-responsive-sm {
  text-align:left;
}
th{
  color:dodgerblue;

  text-decoration: underline;
}
.dropdown-menu {
  max-height: 300px;
  overflow-y: scroll;
}
.btn {
  width: 25vw;
  overflow: hidden;
}
.configuration-btn-box {
  margin-top: 35px;
  justify-content: flex-start;
  display: flex;
}
@media (max-width: 700px) {
  .btn {
    width: 55vw;
  }
}
.configuration-btn {
  width: 230px;
}
th {
  text-decoration: None;
}
span {
  color: #212529;
}
.required {
  color: darkred;
}
</style>

<!--       <tr>
            <th scope="row"><router-link to="/">CPU-Kühler</router-link></th>
            <td >+ Wähle CPU-Kühler </td>
          </tr>
          -->
<!--
<tr>
  <th scope="row"><router-link to="/"> Netzteil</router-link></th>
  <td >+ Wähle Netzteil</td>
</tr>
-->
