<link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.min.css">
<template>
  <div :style="{position: ['sticky'], top: ['0px']}">
    <UpperNavbar></UpperNavbar>
    <LowerNavbar></LowerNavbar>
  </div>

  <div class="container">
    <router-view></router-view>
  </div>

</template>

<script>
import LowerNavbar from "@/components/LowerNavbar";
import UpperNavbar from "@/components/UpperNavbar";


export default {
  name: 'App',
  components: {
    LowerNavbar, UpperNavbar,
  },
}
</script>

<style>
@import "~bootstrap/dist/css/bootstrap.min.css";
@import "@fortawesome/fontawesome-free/css/all.min.css";

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;

}
</style>
