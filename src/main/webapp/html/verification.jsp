<!DOCTYPE html>
<head>
	<jsp:include page="../hf/header.jsp" />
    <link rel="stylesheet" type="text/css" href="menu.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
    
    * {
  box-sizing: border-box;
}

.example {
	padding: 6rem 6rem;
}

/* Style the search field */
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

/* Style the submit button */
form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background-color: #5a3205;
  color: #1d1e22;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none; /* Prevent double borders */
  cursor: pointer;
}

form.example button:hover {
  background: #1d1e22;
  color: #5a3205;
}

/* Clear floats */
form.example::after {
  content: "";
  clear: both;
  display: table;
}
  .center {
		text-align: center;
		margin-top: 10%;
	}
	
    </style>
</head>

<body>
 <!-- head -->
  	<jsp:include page="../hf/head.jsp" />
    <!-- end -->
    <div class="center">
        <h3 id="msg"></h3>
	     <h1>Entre le nom du Produits</h1>
	      <p>On veille attentivement sur votre affaire! </p>
     </div>
  <!-- form -->
    	<form class="example">
		  <input type="text" placeholder="Rechercher un produit" name="mot" required >
		  <button type="submit"><i class="fa fa-search"></i></button>
		</form>
  <!-- end -->
  
   <!-- footer -->
     		<jsp:include page="../hf/footer.jsp" />
   <!-- end -->
</body>