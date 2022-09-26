<template>
  <div class="Uebersicht">
    <h2 :style="{marginTop: ['20px']}">Übersicht der CPU Kompatibilitäten</h2>
    <br><br>
    <img alt="bla" :src="'/table_amd.jpeg'">
    <img alt="bla" :src="'/table_intel.jpeg'">
  </div>
</template>


<script>

export default {
  name: "UebersichtCpu",
};

</script>

<style scoped>
img {
  width: 50vw;
}

@media (max-width: 600px){
img {
  width: 70vw;
}
}

</style>