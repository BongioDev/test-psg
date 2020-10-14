
<template>
  <navlayout>
    <div class="container">
      <div class="row">
        <div class="col-md-12">

          <div v-if='LoggedInUser.role != 1' >
            <h1>Admin only</h1>
          </div>

          <div v-else>
            <br>
            <br>
            <h1>Gebruikers</h1>
            <br>
            <br>
            <h4>Gebruiker aanmaken</h4>
            <br>
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Naam">
              <br>
              <input type="email" class="form-control" placeholder="Email">
            </div>
           <div class="form-group">
              <select class="form-control" id="exampleFormControlSelect1">
                <option>Hier komen alle gebouwen in te staan</option>
              </select>
            </div>           
             
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
                  <button type="button" class="btn btn-primary btn-sm">Aanpassen</button>
                  <button type="button" class="btn btn-danger btn-sm">Verwijderen</button>
                </td>
              </tr>
            </tbody>
          </table>           
          </div>
  
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

    props: ['users', 'LoggedInUser'],
    
    //check if user is not admin, then redirect...
    created() {
    if(this.$props.LoggedInUser.role != 1){
      window.location.href = '/';
    }
  }

  }
</script>
