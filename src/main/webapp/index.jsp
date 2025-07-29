
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NoteTaker: Home</title>
	<%@include file="all_js_css.jsp" %>
  	<style>
  		
  		.img-background {
        position: absolute;
        top: 0;
        left: 0;
        width: 100vw;
        height: 100vh;
        object-fit: cover;
        filter: blur(8px);
        z-index: -1; /* Sends image behind the text */
    }
    
    .overlay-text {
        color: white;
        text-align: center;
        text-shadow: 2px 2px 8px rgba(0,0,0,0.7);
         
    }
    
  	</style>
  </head>
  <body>
   
	<div class="container-fluid p-0 m-0 position-relative">
    <%@include file="Navbar.jsp" %>

    <!-- Background Image -->
    <img src="img/s1.jpg" alt="Background" class="img-background" >

    <!-- Overlay Text -->
    <div class="overlay-text">
        <h1>Welcome to Note Taker</h1> <br>
        <p>Start Taking your Notes.</p>
        <a href="add_notes.jsp" class="btn btn-primary"> Start Here</a>
   	 </div>
	</div>

  </body>
</html>