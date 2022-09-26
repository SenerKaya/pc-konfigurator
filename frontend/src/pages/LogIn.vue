<template>
  <div class="login-page">
    <transition name="fade">
      <div v-if="!registerActive" class="wallpaper-login"></div>
    </transition>
    <div class="wallpaper-register"></div>

    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-6 col-sm-8 mx-auto">
          <div class="card login" v-bind:class="{ error: emptyFields }">
            <h1>Anmeldung</h1>
            <form class="form-group">
              <input v-model="userName" type="text" class="form-control" placeholder="Benutzername" required>
              <input v-model="passwordLogin" type="password" class="form-control" placeholder="Passwort" required>
              <input type="button" class="btn btn-primary" @click="doLogin" value="Anmelden">
              <p>Du hast noch kein Konto? <router-link to="/sign-up"  ><a href="#" @click="emptyFields = false">Zur Registrierung</a></router-link>
              </p>
              <p><a href="#">Passwort vergessen?</a></p>
            </form>
          </div>
        </div>
      </div>

    </div>
  </div>
</template>

<script>
import axios from "axios"
export default {

  data() {
    return {
      userName: "",
      registerActive: "", // true if somebody is registering
      passwordLogin: "",
      emptyFields: false,
    }},
  methods: {
    doLogin: function() {
      const loginData = {username: this.userName, password: this.passwordLogin}
      console.log("loginData", loginData)
      //`https://backend-pc-konfigurator.herokuapp.com/api/login`
      axios.post(`http://localhost:5000/api/login`, loginData)
          .then(response => {
            console.log(response)
            let token = response.data.token;
            localStorage.setItem("user", token)
            window.location.href = '/'
            this.$router.push("/")
          })
          .catch(error => {
            console.error("Error occurred", error)
          })
    },
  }
}
</script>
<style scoped>
p {
  line-height: 1rem;
}

.card {
  padding: 20px;
}

.form-group {
}

input {
  margin-bottom: 20px;
}


.login-page {
  align-items: center;
  display: flex;
  height: 65vh;
}
.wallpaper-login {
  background-size: cover;
  height: 100%;
  position: absolute;
  width: 100%;
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity .5s;
}
.fade-enter,
.fade-leave-to {
  opacity: 0;
}

.wallpaper-register {
  background-size: cover;
  height: 100%;
  position: absolute;
  width: 100%;
  z-index: -1;
}

h1 {
  margin-bottom: 1.5rem;
}

.error {
  animation-name: errorShake;
  animation-duration: 0.3s;
}

@keyframes errorShake {
  0% {
    transform: translateX(-25px);
  }
  25% {
    transform: translateX(25px);
  }
  50% {
    transform: translateX(-25px);
  }
  75% {
    transform: translateX(25px);
  }
  100% {
    transform: translateX(0);
  }
}

</style>

