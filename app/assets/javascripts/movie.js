
  var List = {

  //   addMovie: function(){

  //   $.ajax({
  //     method: "POST",
  //     url: "movies/index.json",

  //     dataType: "json",
  //     contentType: "application/json",
  //     // headers: { 'Access-Control-Allow-Origin': 'http://localhost:3000'},
  //     // type: "POST",
  //     async: true
  //     })
  // },

    getMovie: function(){
      $.ajax({
      method: "GET",
      url: "movies.json",

      dataType: "json",
      contentType: "application/json",
      // headers: { 'Access-Control-Allow-Origin': 'http://localhost:3000'},
      // type: "POST",
      async: true
      success: function(){
        ///How to get movies
               var str = ""
              for(var i=0; i<movies; i++){
                movies[i]
        str += "<tr>
          <td><%= movie.id %></li>
          <td><%= movie.name %></li>
          <td><%= movie.release_date %></li>
        </tr>"
              }
              $('#movie').append("  <tr>
          <td><%= movie.id %></li>
          <td><%= movie.name %></li>
          <td><%= movie.release_date %></li>
        </tr>")
            }
      })
    }
  }