
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
            <h4>Gebruiker aanmaken</h4>
            <br>

            <!-- form create user -->
            <form action="/users/create" method="POST" @submit.prevent="createUser">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Naam" v-model="form.name" >
                <br>
                <input type="email" class="form-control" placeholder="Email" v-model="form.email" >
              </div>
              <div class="form-group">
                <!-- <select class="form-control" id="exampleFormControlSelect1" v-model="form.building">
                  <option selected value="Empty">Kies een gebouw of laat leeg</option>
                  <option v-for="building in buildings" :key="building.id">{{building.name}}</option>
                </select> -->
                <br> 
                <button type="submit" class="btn btn-primary">Aanmaken</button>
              </div>
            </form>           
             <br>
            <div class="table-responsive">
              <table class="table table-hover table-dark">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Naam</th>
                    <th scope="col">Email</th>
                    <th scope="col">Aangemaakt op</th>
                    <th scope="col">Actie</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="user in users" :key="user.id">
                    <th scope="row">{{user.id}}</th>
                    <td>{{user.name}}</td>
                    <td>{{user.email}}</td>
                    <td>{{user.created_at}}</td>
                    <td>
                      <inertia-link class="btn btn-primary btn-sm" :href="`/users/updatePage/${user.id}`">Aanpassen</inertia-link>
                      <!-- <button type="button" class="btn btn-primary btn-sm" v-on:click="updateUser(user.id)">Aanpassen</button> -->
                      <button type="button" class="btn btn-danger btn-sm" v-on:click="deleteUser(user.id)">Verwijderen</button>
                    </td>
                  </tr>
                </tbody>
              </table> 
            </div>          
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

    props: ['users', 'LoggedInUser', 'buildings', 'errors', 'successMessage'],

    data() {
      return {
      form: {
        name: '',
        email: '',
        building: '',
      }
      }
    },

    methods: {
      //create
      createUser() {
        this.$inertia.post('/users/create', this.form)
        .then((res) => {
          console.log('User created successfully');
        });
      },

      //delete
      deleteUser(user_id) {
        this.$inertia.post('/users/delete/' + user_id, this.form)
        .then((res) => {
          console.log('User deleted successfully');
        });
      },

      // //update
      // updateUser(user_id) {
      //   this.$inertia.post('/users/updatePage/' + user_id, this.form)
      //   .then((res) => {
      //     console.log('User deleted successfully');
      //   });
      // },
    },
    
    //check if user is not admin onload, then redirect...
    created() {
    if(this.$props.LoggedInUser.role != 1){
      window.location.href = '/';
    }
  }

  }
</script>
