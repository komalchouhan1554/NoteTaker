<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes : NoteTaker</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>

<div class="container">
    <%@ include file="navbar.jsp" %>
    <br>

    <%
        // Get notes from search, if available
        List<Note> list = (List<Note>) request.getAttribute("notes");

        // If no search, load all notes
        if (list == null) {
            Session s = FactoryProvider.getFactory().openSession();
            Query q = s.createQuery("from Note");
            list = q.list();
            s.close();
        }

        // For heading
        String searchKeyword = "";
        if (request.getAttribute("searchText") != null) {
            searchKeyword = (String) request.getAttribute("searchText");
        }
    %>

    <h1 class="text-uppercase text-center mb-4">
        <%
            if (!searchKeyword.isEmpty()) {
        %>
            Search Results for "<%= searchKeyword %>"
        <%
            } else {
        %>
            All Notes
        <%
            }
        %>
    </h1>

    <div class="row">
        <div class="col-12">
            <%
                if (list.size() == 0) {
            %>
                <p class="text-center text-muted">No notes found.</p>
            <%
                }

                for (Note note : list) {
            %>

            <div class="card mt-3 shadow-sm rounded">
                <img class="card-img-top m-4 mx-auto"
                     src="image/notes.png"
                     style="max-width: 100px"
                     alt="Note image">

                <div class="card-body">
                    <h5 class="card-title"><%= note.getTitle() %></h5>
                    <p class="card-text"><%= note.getContent() %></p>

                    <p class="text-primary">
                        <small><%= note.getAddedDate() %></small>
                    </p>

                    <div class="container text-center mt-3">
                        <a href="DeleteServlet?note_id=<%= note.getId() %>"
                           class="btn btn-danger btn-sm rounded-pill">
                           Delete
                        </a>

                        <a href="edit.jsp?note_id=<%= note.getId() %>"
                           class="btn btn-primary btn-sm rounded-pill">
                           Update
                        </a>
                    </div>
                </div>
            </div>

            <%
                }
            %>

        </div>
    </div>
</div>

</body>
</html>
