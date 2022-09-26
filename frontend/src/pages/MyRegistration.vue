<template>
  <div class="login-page">
    <transition name="fade">
      <div v-if="!registerActive" class="wallpaper-login"></div>
    </transition>
    <div class="wallpaper-register"></div>

    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-6 col-sm-8 mx-auto">
          <div v-if="registration_succeeded">
            Du hast dich erfolgreich registriert !
            <router-link to="/login"  ><a href="#" @click="emptyFields = false">Zur Anmeldung</a></router-link>
          </div>
          <div v-else class="card register" v-bind:class="{ error: emptyFields }">
            <h1>Registrierung</h1>
            <form class="form-group">
              <input v-model="userNameReg" type="text" class="form-control" placeholder="Benutzername" required>
              <input v-model="passwordReg" type="password" class="form-control" placeholder="Passwort" required>
              <input v-model="confirmReg" type="password" class="form-control" placeholder="Passwort bestätigen" required>
              <input type="button" class="btn btn-primary" @click="doRegister" value="Registrieren">
              <p>Du hast bereits einen Account? <router-link to="/login"  ><a href="#" @click="emptyFields = false">Zur Anmeldung</a></router-link>
              </p>
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
      userNameReg: "",
      passwordReg: "",
      confirmReg: "",
      emptyFields: false,
      registration_succeeded: false,
    }},
  methods: {
    doRegister: function() {
      const registrationData = {username: this.userNameReg, password: this.passwordReg, password_repeat: this.confirmReg}
      console.log("loginData", registrationData)
         // `https://backend-pc-konfigurator.herokuapp.com/api/sign-up`
      axios.post(`http://localhost:5000/api/sign-up`, registrationData)
          .then(response => (console.log(response)))
          .catch(error => {
            console.error("Error occurred", error)
          })
        this.registration_succeeded = true
    }
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
  /*
  background: url(https://images.pexels.com/photos/32237/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260)

  no-repeat center center; */
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
  /*
  background: url(https://images.pexels.com/photos/533671/pexels-photo-533671.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260)
  no-repeat center center;
  */
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

