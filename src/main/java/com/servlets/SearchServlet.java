package com.servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import org.hibernate.Session;
import com.entities.Note;
import com.helper.FactoryProvider;
import com.helper.NoteDao;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1️⃣ Get search query
        String queryText = request.getParameter("query");

        // 2️⃣ Open Hibernate session
        Session session = FactoryProvider.getFactory().openSession();

        // 3️⃣ Use DAO to get notes matching title
        List<Note> notes = NoteDao.searchByTitle(session, queryText);

        session.close();

        // 4️⃣ Forward results to JSP
        request.setAttribute("notes", notes);
        request.setAttribute("searchText", queryText);

        RequestDispatcher dispatcher = request.getRequestDispatcher("all_notes.jsp");
        dispatcher.forward(request, response);
    }
}
