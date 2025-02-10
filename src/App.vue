<template>
  <div class="app">
    <h1>{{ message }}</h1>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      message: '欢迎使用 Vue 3!'
    }
  }
}
</script>

<style>
.app {
  text-align: center;
  margin-top: 60px;
}
</style> 