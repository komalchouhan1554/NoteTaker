<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add notes</title>
  <%@include file="all_js_css.jsp" %>

</head>
<body>
   <div class ="container">
   <%@include file="navbar.jsp" %>
   <br>
   
   <h1> 
   please fill note detail
   </h1>
   
 
   <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="mynote1">note title</label>
    <input name ="title" required type="text" class="form-control" id="title" aria-describedby="note" placeholder="Enter title">
   
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
<textarea 
name="content" id="content"placeholder="Enter content"
class="form-control";

> </textarea>
  </div>
 <div class ="container text-center">
  <button type="submit" class="btn btn-primary">ADD</button>
  </div>
</form>
   </div>

   
</body>
</html>