<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>



		<!-- This is add notes form -->
		<div class="container">

			<h2>Please fill your note</h2>

			<form action="SaveNoteServlet" method="post">
				<div class="mb-3">
					<label for="title" class="form-label">Note Title</label> 
					<input 	type="text" class="form-control" id="title" name="title" required>
				</div>
				<div class="mb-3">
					<label for="content" class="form-label">Note Content</label>
					<textarea id="content" name="content"  class="form-control" style = "height : 300px;"></textarea>

				</div>

				<div class="container text-center">
					<button type="submit" class="btn btn-primary">Add</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>