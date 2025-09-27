<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>edit note</title>
  <%@include file="all_js_css.jsp" %>

</head>
<body>
 <div class ="container">
   <%@include file="navbar.jsp" %>
   <h1>Edit your Note</h1>
  
  <%
  int noteId=Integer.parseInt(request.getParameter("note_id").trim());
  Session s=FactoryProvider.getFactory().openSession();
	Note note=s.get(Note.class, noteId);
  %>
  
  
     <form action="UpdateServlet" method="post">
     <input value=" <%=note.getId()%>"name="noteId"type="hidden"/>
  <div class="form-group">
    <label for="mynote1">note title</label>
    <input name ="title" required type="text" class="form-control" id="title" aria-describedby="note" placeholder="Enter title">
    value="<%=note.getTitle() %>"
   
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
<textarea 
name="content" id="content"placeholder="Enter content"
class="form-control"
style="height:300px;">
<%= note.getContent()%>
</textarea>
  </div>
  
  
  
 <div class ="container text-center">
  <button type="submit" class="btn btn-primary">Save </button>
  </div>
</form>

</body>
</html>