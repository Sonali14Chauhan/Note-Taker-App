<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page - Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>

		<br>
		<div class="container">
			<h1 class="text-uppercase">Update Note :</h1>
			<%
				int noteId = Integer.parseInt(request.getParameter("note_id").trim());
				Session s = FactoryProvider.getFactory().openSession();
			
				Note note = (Note)s.get(Note.class, noteId);
			
			%>
			
			<form action="UpdateServlet" method="post">
			
			<input value="<%= note.getId() %>" name="noteId" type="hidden">
				<div class="mb-3">
					<label for="title" class="form-label">Note Title</label> 
					<input 	type="text" class="form-control" id="title" name="title" value="<%= note.getTitle() %>" required>
				</div>
				
				<div class="mb-3">
					<label for="content" class="form-label">Note Content</label>
					<textarea id="content" name="content"  class="form-control" style = "height : 300px;"><%= note.getContent() %></textarea>

				</div>

				<div class="container text-center">
					<button type="submit" class="btn btn-success">Save Note</button>
				</div>
			</form>
			
		</div>
	</div>

</body>
</html>