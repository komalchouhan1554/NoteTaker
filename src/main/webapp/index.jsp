<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>NoteTaker : Home</title>

    <%@include file="all_js_css.jsp" %>
  </head>

  <body>

    <div class="container">
      <%@include file="navbar.jsp" %>

      <br>

      <div class="card p-4">

<div class="text-center mt-5">
  <div class="p-4 shadow-lg rounded bg-light d-inline-block">
    <img src="image/notes.png" class="img-fluid" style="max-width: 280px;" alt="Notes Image">
  </div>
 
</div>

        <h1 class="text-primary text-uppercase text-center mt-3">
          Start Taking Notes
        </h1>

        <p class="text-muted text-center mt-2">
          A simple Java-based note taking app to write, save, and manage your ideas effortlessly.
        </p>

        <div class="container text-center mt-3">
          <form action="add_notes.jsp" method="get">
            <button type="submit" class="btn btn-outline-primary">
              Get Started
            </button>
          </form>
        </div>

        <p class="text-center font-italic mt-4">
          Your ideas deserve a safe place.
        </p>

        <<hr class="my-5">

<div class="row align-items-center">
  
  <!-- Image on Left -->
  <div class="col-md-6 text-center">
    <img src="image/notetaking.png" class="img-fluid" style="max-width: 350px;" alt="Write Notes">
  </div>

  <!-- Text on Right -->
  <div class="col-md-6">
    <h3 class="text-primary">Write Without Distractions</h3>
    <p class="text-muted">
      Focus completely on your thoughts with a clean and simple editor.
      This application allows you to write notes freely without unnecessary
      features or clutter.
    </p>
    <p>
      Whether it's ideas, study notes, or quick reminders, everything is
      just one click away.
       <form action="add_notes.jsp" method="get">
            <button type="submit" class="btn btn-outline-primary">
              Get Started
            </button>
          </form>
    </p>
  </div>
  
  <hr class="my-5">

<div class="row align-items-center">

  <!-- Text on Left -->
  <div class="col-md-6">
    <h3 class="text-primary">Save & Access Anytime</h3>
    <p class="text-muted">
      All your notes are safely stored and can be accessed whenever you need.
      The app ensures fast saving and easy retrieval of your content.
    </p>
    <p>
      Never worry about losing your ideas — they stay organized and ready
      for future use.
    </p>
  </div>

  <!-- Image on Right -->
  <div class="col-md-6 text-center">
    <img src="image/notelistman.png" class="img-fluid" style="max-width: 350px;" alt="Save Notes">
  </div>

</div>
<br><br><br><br><br><br>
<h2 class="text-center text-primary mb-4">App Features</h2>
<hr class="my-4">



<div class="row text-center">

  <div class="col-md-4">
    <div class="card p-3 shadow-sm">
      <h5>Simple Editor</h5>
      <p class="text-muted">
        A clean and minimal writing area designed for distraction-free note taking.
      </p>
    </div>
  </div>

  <div class="col-md-4">
    <div class="card p-3 shadow-sm">
      <h5>Fast Saving</h5>
      <p class="text-muted">
        Save your notes instantly with efficient Java-based file handling.
      </p>
    </div>
  </div>

  <div class="col-md-4">
    <div class="card p-3 shadow-sm">
      <h5>User Friendly</h5>
      <p class="text-muted">
        Easy to use interface suitable for students, developers, and professionals.
      </p>
    </div>
  </div>

</div>

<hr class="my-5">


<div class="row align-items-center">

  <div class="col-md-6">
  <br>
  <br><br><br><br><br><br>
    <h3 class="text-primary">Who Can Use This App?</h3>
    <ul>
      <li>-Students for study notes</li>
      <li>-Developers for code ideas</li>
      <li>-Professionals for daily tasks</li>
      <li>-Anyone who wants to write and save ideas</li>
    </ul>
  </div>

  <div class="col-md-6 text-center">
  <br><br><br>
    <img src="image/linewoman.png" class="img-fluid" style="max-width: 400px;" alt="Users">
    <form action="add_notes.jsp" method="get">
            <button type="submit" class="btn btn-outline-primary">
              Get Started
            </button>
          </form>
  </div>

</div>


  

</div>
<hr>
<br><br>
<p class="text-center text-muted">
  © 2026 NoteTaker App | Built with Java 
</p>


      </div>
    </div>

  </body>
</html>
