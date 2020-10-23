
<template>
  <navlayout>
    <div class="container">
      <div class="row">
        <div class="col-md-12">

             <!-- success message -->
            <div v-if="successMessage" class="alert alert-success mt-4">
              {{ successMessage}}
            </div>

            <!-- errors message NOT WORKING??? -->
            <div v-if="Object.keys(errors).lenght > 0" class="alert alert-danger mt-4">
              {{ errors[Object.keys(errors)[0]][0] }}
            </div>


            <h1>Gebouwen</h1>
            <h4>Welkom {{user.name}} hieronder vind u uw gebouwen</h4>

            <div v-if="user_buildings">
                <ul v-for="user_building in user_buildings" :key="user_building.id">
                  <li >{{user_building.name}}</li>
                                                                            <!-- hoe hier lopen? aantal gebouwen... -->
                                                                            <!-- dit werkt niet, rooms staan niet juiste plaats, en mag ook niet, wat als id niet volgorde is.... -->
                  <li v-for="user_room in user_rooms" :key="user_room.id">{{user_room[(user_building.id)-1].name}}</li>
                 </ul>
            </div>
            <div v-else>
              <h5>Geen gebouwen gevonden</h5>
            </div>
  
        </div>
      </div>
    </div>
  </navlayout>
</template>

<script>

  import Navlayout from '../../Shared/NavLayout'

  export default {
    components: {
      Navlayout,
    },

    props: ['user', 'user_buildings', 'user_rooms', 'errors', 'successMessage'],

//     data() {
//    return;
//     },

    methods: {

    },
    
    //check if user is not admin onload, then redirect...
    created() {
   console.log(this.$props.user_rooms);
  }

  }
</script>
