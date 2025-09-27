<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   
    <title>NoteTaker: home page</title>
    
     <%@include file="all_js_css.jsp" %>
  </head>
  <body>
   
   <div class ="container">
   <%@include file="navbar.jsp" %>
   
  <br>
  <div class="card">
  <img alt="" class="img-fluid mx-auto" style=max-width:400px;" src="image/notes.png">
  <h1 class="text-primary text-uppcase text-center mt-3">Start talking Notes</h1>
  <div class="container text-center">
<form action="add_notes.jsp" method="get">
  <button type="submit" class="btn btn-outline-primary text-center">Start Here</button>
</form>
  
  </div>
  </div>
   
   
   </div>

    </body>
</html>