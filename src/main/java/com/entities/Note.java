package com.entities;

import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "Notes")
public class Note {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // auto-generate ID
    private int id;

    private String title;
    @Column(length=1500)
    private String content;

    @Temporal(TemporalType.TIMESTAMP)
    private Date addedDate;

    // Default constructor (required by Hibernate)
    public Note() {}

    // Parameterized constructor
    public Note(String title, String content, Date addedDate) {
        this.title = title;
       
        this.content = content;
        this.addedDate = addedDate;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }

    public Date getAddedDate() { return addedDate; }
    public void setAddedDate(Date addedDate) { this.addedDate = addedDate; }
}
