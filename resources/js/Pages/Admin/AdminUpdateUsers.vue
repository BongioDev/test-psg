
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

            <div v-if='LoggedInUser.role != 1' >
            <h1>Admin only</h1>
            </div>

            <div v-else>
            <br>
            <br>
            <h1>Gebruikers</h1>
            <br>
            <h4>Gebruiker aanpassen</h4>
            <br>
              <!-- form update user -->
            <form action="#" method="PATCH" @submit.prevent="updateUser">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Naam" v-model="form.name">
                <br>
                <input type="email" class="form-control" placeholder="Email" v-model="form.email">
              </div>
               <!-- building checkboxes -->
               <span v-for="building in buildings" :key="building.id">

                 <input type="checkbox" name="building" :value='building.id' v-model="form.building">
                 <label>{{building.name}}</label><br>

               </span>
           
              <button type="submit" class="btn btn-primary">Aanpassen</button>
            </form>

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

    props: ['user', 'user_buildings', 'buildings', 'LoggedInUser', 'errors', 'successMessage'],

    data() {
      return {
      form: {
        name: this.user.name,
        email: this.user.email,
        building: [],
      }
      }
    },

    methods: {
      //update
      updateUser() {
        this.$inertia.patch('/users/updatePage/' + this.$props.user.id +'/update', this.form)
        .then((res) => {
        console.log(this.form.building );
        });
      },

    },
    
    //check if user is not admin onload, then redirect...
    created() {
    if(this.$props.LoggedInUser.role != 1){
      window.location.href = '/';
    }
  }

  }
</script>
