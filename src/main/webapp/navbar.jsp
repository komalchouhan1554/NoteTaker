<nav class="navbar navbar-expand-lg navbar-dark" style="background: linear-gradient(90deg, #6a11cb 0%, #2575fc 100%); 
                                                     box-shadow: 0 4px 8px rgba(0,0,0,0.15); 
                                                     border-radius: 30px; 
                                                     margin: 10px; 
                                                     padding: 10px 20px;">
  <a class="navbar-brand font-weight-bold" href="#" style="letter-spacing: 1px;">NoteTaker</a>
  <button class="navbar-toggler rounded-circle" type="button" data-toggle="collapse" data-target="#navbarContent" 
          aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarContent">
    <ul class="navbar-nav mr-auto ml-3">
      <li class="nav-item active">
        <a class="nav-link text-white font-weight-medium rounded-pill px-3" href="index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white font-weight-medium rounded-pill px-3" href="add_notes.jsp">Add Note</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white font-weight-medium rounded-pill px-3 disabled" href="all_notes.jsp" tabindex="-1" aria-disabled="true">Show Notes</a>
      </li>
    </ul>

  <form action="<%=request.getContextPath()%>/SearchServlet" method="get" class="form-inline my-2 my-lg-0">
    <div class="input-group rounded-pill overflow-hidden" style="border: 0px solid rgba(255,255,255,0.6);">
        <input type="search" class="form-control border-0" name="query" placeholder="Search by title..." required>
        <button class="btn btn-light text-primary font-weight-bold" type="submit">Search</button>
    </div>
</form>





  </div>
</nav>
