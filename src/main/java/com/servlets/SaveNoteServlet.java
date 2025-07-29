package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
//@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// Get title and content from request
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			// Create a new Note object
			Note note = new Note(title, content, new Date());
			
			System.out.println(note.getId());
			System.out.println(note.getTitle());
			
			// Save the note to database using Hibernate
			/*
			 * Session session = FactoryProvider.getFactory().openSession(); Transaction tx
			 * = session.beginTransaction();
			 * 
			 * session.save(note);
			 * 
			 * tx.commit(); session.close();
			 * 
			 * response.setContentType("text/html"); response.getWriter().
			 * println("<h1 style='text-align:center;'>Note is added successfully</h1>");
			 * response.getWriter().
			 * println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all notes</a></h1>"
			 * );
			 */
			
			Session s =  FactoryProvider.getFactory().openSession();
			
			Transaction tx = s.beginTransaction();
			
			s.save(note);
			
			tx.commit();

			s.close();
			response.sendRedirect("all_notes.jsp");
//			response.setContentType("text/html");
//			PrintWriter out = response.getWriter();
			//out.println("<h1>Note is added successfully</h1>");   
			
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().println("Error saving the note: " + e.getMessage());
		}
	}

}
