
<template>
  <navlayout>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1>Home?</h1>
        </div>
      </div>
    </div>
  </navlayout>
</template>


<script>

  import Navlayout from '../Shared/NavLayout'

  export default {
    components: {
      Navlayout,
    },
    props: ['users'],

  }
</script>
