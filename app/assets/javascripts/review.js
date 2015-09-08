
var List = {
getReview: function(){
      $.ajax({
        method: "GET",
        url: "reviews.json",

        dataType: "json",
        contentType: "application/json",
        // headers: { 'Access-Control-Allow-Origin': 'http://localhost:3000'},
        // type: "POST",
        async: true,
        success: function(json){
        
              var review = json;
              var str = "";
              for(var i=0; i<review.length; i++){
       
                str += '<tr> \
                          <td>'+review[i].movie_id+' </td> \
                          <td>'+review[i].title+' </td> \
                          <td>'+review[i].review_text+' </td> \
                          <td>'+review[i].review_date+' </td> \
                          <td>'+review[i].reviewer_name+' </td> \
                        </tr>' 
                
              }
              $('#review').append(str);
        },
        failure: function(){
          console.log("fails to load json")
        }
      })
    }
  }

  List.getReview();