<template>

  <div class="description-container">
    <h3 v-if="name != ''">{{ name }}</h3>
    <h3 v-else>Deine Konfiguration 001</h3>
    <p class="description-text">{{ description }}</p>
    <table class="table table-borderless">
      <tbody>
      <tr>
        <th scope="row">CPU</th>
        <td><span> {{ cpu }} </span><sup><a target="_blank" v-bind:href="`https://www.amazon.de/s?k=${cpu}`"><img alt="b" :src="'/amazon_icon.svg'"></a></sup></td>
      </tr>
      <tr>
        <th scope="row">GPU</th>
        <td><span> {{ gpu }} </span><sup><a target="_blank" v-bind:href="`https://www.amazon.de/s?k=${gpu}`"><img alt="b" :src="'/amazon_icon.svg'"></a></sup></td>
      </tr>
      <tr>
        <th scope="row">RAM</th>
        <td colspan="2"><span> {{ ram }} </span><sup><a target="_blank" v-bind:href="`https://www.amazon.de/s?k=${ram}`"><img alt="b" :src="'/amazon_icon.svg'"></a></sup></td>
      </tr>
      <tr>
        <th scope="row">Mainboard</th>
        <td colspan="2"><span> {{ mainboard }} </span><sup><a target="_blank" v-bind:href="`https://www.amazon.de/s?k=${mainboard}`"><img alt="b" :src="'/amazon_icon.svg'"></a></sup></td>
      </tr>
      <tr>
        <th scope="row">Festplatte</th>
        <td colspan="2"><span> {{ disk_storage }} </span><sup><a target="_blank" v-bind:href="`https://www.amazon.de/s?k=${disk_storage}`"><img alt="b" :src="'/amazon_icon.svg'"></a></sup></td>
      </tr>
      </tbody>
    </table>
    <div class="align-text-button">
      <div>
        <p class="price-text" v-show="price != undefined"> {{ price }}.- CHF</p>
        <button @click="checkCompatibility" type="button" class="btn btn-outline-warning" v-show="price == undefined">
          Kompabilitätscheck ausführen
        </button>
      </div>
      <div>
        <div class="btn-group" role="group" aria-label="Basic example">
          <button type="button" class="btn btn-primary" v-show="price != undefined">Komponenten ändern</button>
          <button type="button" class="btn btn-light">Konfiguration speichern</button>
        </div>
      </div>
    </div>
    <p class="checked-text" v-show="this.checked">Alle Komponenten sind miteinander kompatibel!</p>
    <p class="error-text" v-show="this.error">Prozessor und Mainboard sind nicht kompatibel!</p>
  </div>

</template>


<script>

export default {
  props: [
    'name',
      'description',
      'cpu',
      'gpu',
      'ram',
      'mainboard',
      'disk_storage',
      'price'
  ],
  data() {
    return {
      error: false,
      checked: false,
    }
  },

  methods: {
    checkCompatibility(){
      console.log("this...", this.cpu)
      console.log(this.mainboard)
      this.error = false;
      this.checked = false;
      const amd_mainboards = [
        "Gigabyte X570S AERO G",
        "Asus TUF Gaming X570-Pro WiFi",
        "Gigabyte B550 Aorus Elite AX V2",
        "Asus TUF Gaming B550-Plus",
        "Gigabyte B550M Aorus Pro-P",
        "MSI B550M-A Pro",
        "Gigabyte B550I Aorus Pro AX",
      ]
      if (amd_mainboards.includes(this.mainboard) && this.cpu.includes('AMD')) {
          this.checked = true;
      }
      else if(!amd_mainboards.includes(this.mainboard) && !this.cpu.includes('AMD')) {
        this.checked = true;
      }
      else {
        this.error = true;
      }
    }
  },
  watch: {
    cpu() {
      console.log()
      this.checked = false;
      this.error = false;
    },
    mainboard() {
      this.checked = false;
      this.error = false;
    }

  }
}

</script>

<style scoped>
.description-container {
  background: rgb(128, 128, 128,0.3);
  border-radius: 5px;
  padding: 1.25rem 1.25rem 1.25rem 1.25rem;
  margin-bottom: 1rem;
}
h3 {
  margin-bottom: 1.5rem;
  font-weight:600;
}
table {
  margin-bottom: 2rem;
}
button {
  position: relative;
  left: 27%;
}

.align-text-button {
  display: flex;
  justify-content: space-around;
  align-content: center;
  width: 58vw;
  margin-bottom: 0.5em;
  max-height: 50px;
}
.price-text {
  font-size: 1.875rem;
  color: #42BD91;
  margin-right: 0.75em;
}
@media (max-width: 700px) {
  .align-text-button {
    width: 38vw;
    flex-direction: column;
  }
  .price-text {
    margin-left: 1rem;
    margin-right: 0.25em;
    font-size: 1.6rem;
  }
  .btn {
    margin-bottom: 2rem;
  }
}

img {
  width: 18px;
  height: 18px;
}
span {
  margin-right: 8px;
}
a {
  color: #ffc107;
  text-decoration: None;
}
button:hover > a {
  color: #000;
  transition: 0.3s color ease-in-out;
}
.checked-text {
  color: green;
  text-align: left;
  margin-left: 10vw;
}
.error-text {
  color: darkred;
  text-align: left;
  margin-left: 10vw;
}
@media (max-width: 600px){
  .checked-text {
    max-width: 70vw;
  }
  .error-text {
    max-width: 70vw;
  }
}</style>