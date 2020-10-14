
<template>
  <navlayout>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1>Welcome</h1>
          <p>Hello , welcome to your first Inertia app!</p>


         <tr v-for="user in users" :key="user.id">
           <td>{{user.name}}</td>
           <td>{{user.email}}</td>
         </tr>
        
        
        
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
