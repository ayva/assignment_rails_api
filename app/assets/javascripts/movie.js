
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
        async: true,
        success: function(json){
        
              var movies = json;
              var str = "";
              for(var i=0; i<movies.length; i++){
       
                str += '<tr> \
                          <td>'+movies[i].id+' </td> \
                          <td>'+movies[i].name+' </td> \
                          <td>'+movies[i].release_date+' </td> \
                        </tr>' 
                
              }
              $('#movie').append(str);
        },
        failure: function(){
          console.log("fails to load json")
        }
      })
    }
  }

  List.getMovie();