<template>
  <nav class="navbar navbar-expand-lg navbar-dark">
<div class="container">
  <router-link to="/"  class="navbar-brand nav-link pl-0">PC-Konfigurator</router-link>
  <button @click="menu" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navBarNav" aria-controls="navBarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navBarNav">
    <ul class="navbar-nav me-3">
      <li class="greeting">
        {{ username }}
      </li>
      <li v-show="username != ''" @click="logUserOut" class="nav-item active">
        <router-link to="/login"  class="nav-link pl-0">Logout</router-link>
      </li>
      <li v-show="username == ''" class="nav-item active">
        <router-link to="/login"  class="nav-link pl-0">Login</router-link>
      </li>
      <li v-show="username == ''" class="nav-item active">
        <router-link to="/sign-up"  class="nav-link pl-0">Registrierung</router-link>
      </li>
    </ul>
  </div>
  <!--
  <div class="hamburger" @click="menu">
      <span class="bar"></span>
      <span class="bar"></span>
      <span class="bar"></span>
    </div>
    -->
</div>
</nav>
</template>

<script>

import VueJwtDecode from "vue-jwt-decode";

export default {
  name: "UpperNavbar",
  created() {
    this.getUserDetails();
  },
  data() {
    return {
      username: '',
    }
  },
  methods: {
    getUserDetails() {
      // get token from localstorage
      let token = localStorage.getItem("user");
      console.log("token", token)
      try {
        //decode token here and attach to the user object
        let decoded = VueJwtDecode.decode(token);
        this.username = "Hallo " + decoded.username + "!";
      } catch (error) {
        // return error in production env
        console.log(error, 'error from decoding token')
      }
    },
    logUserOut() {
      localStorage.removeItem("user");
      this.username = '';
      //his.$router.push("/login");
    },
    menu() {
      let item_container = document.getElementById("navBarNav")
      if(item_container.classList.contains('show')) {
        item_container.classList.remove('show')
      }
      else {
        item_container.classList.add('show')
      }
      let item_container_low = document.getElementById("navBarNavLow")
      if(item_container_low.classList.contains('show')) {
        item_container_low.classList.remove('show')
      }
      else {
        item_container_low.classList.add('show')
      }

}

  }
  };

</script>

<style scoped>

.router-link-style {
  color: rgba(255,255,255,0.5) !important;
}
.router-link-style:hover {
  color: rgba(255,255,255, 0.99) !important;
}
.router-link-active {
  background: rgb(234,182,118,0.2);
  color: #fff !important;
}
.container{
  background-color: #141a1f;
  display:flex;
  justify-content: space-between;
  max-width: 100vw;
}
.container > div {
  flex-direction: row-reverse;
}
.navbar-expand-lg{
  padding-bottom: 0;
  padding-top: 0;
}
ul > li {
  display: flex;
}
@media (max-width: 768px) {
  ul > li {
    display: block;
  }
}

.greeting {
  color: #fff;
  justify-content: center;
  align-items: center;
  margin-right: 2rem;
  display: flex;
}


</style>