
  var List = {

    appendMovie: function(movie){

                str = '<tr> \
                          <td>'+movie[0].id+' </td> \
                          <td>'+movie[0].name+' </td> \
                          <td>'+movie[0].release_date+' </td> \
                        </tr>' ;
                
              
              $('#movie').append(str);
        
    },
    getMovie: function(){
      $.ajax({
        method: "GET",
        url: "movies.json",
        dataType: "json",
        contentType: "application/json",
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