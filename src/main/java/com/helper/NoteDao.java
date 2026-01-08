package com.helper;


import com.entities.Note;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class NoteDao {

    public static List<Note> searchByTitle(Session session, String title) {

        String hql = "from Note where lower(title) like :t";
        Query<Note> query = session.createQuery(hql, Note.class);
        query.setParameter("t", "%" + title.toLowerCase() + "%");

        return query.list();
    }
}

