<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.Connection" %>

<%
	
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
	} catch( ClassNotFoundException  e) {
		e.printStackTrace();
	}
	
%>

<head>
	<jsp:include page="../hf/header.jsp" />
    <link rel="stylesheet" type="text/css" href="menu.css"/>
    <link rel="stylesheet" type="text/css" href="../css/enregistre.css"/>
    
    <style>
    
    #table {
    	
    	  padding: 4rem 4rem;
    }
    
    #table td {
      	border: 1px solid #ddd;
  		padding: 10px;
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
    
  <!-- Back -->
    	<jsp:include page="../hf/back.jsp" />
  <!-- end -->
  
  <!-- Display Data -->

   <div class="center">
    	 <h3 id="msg"></h3>
	     <h1>Modifier un Produits</h1>
	      <p>On veille attentivement sur votre affaire! </p>
     </div>
     
<table id="table">
<tr style="background-color: #5a3205; color: #fff;">
<td>Nom Produit</td>
<td>Quantite</td>
<td>Prix</td>
<td>Date Fabrication</td>
<td>Date Expiration</td>
<td>Fournisseur</td>
<td>Tel Fournisseur</td>
<td>Email Fournisseur</td>
<td>Adresse Fournisseur</td>
<td>Etat</td>
<td>Action</td>
</tr>
	<%
	
		try {
			
			Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/gestionstock", "root", "");
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery("SELECT * from produits ");
			
			while( result.next() ) {
				
				%>
				<tr>
				
				<td><%=result.getString("nomproduit") %></td>
				<td><%=result.getString("quantite") %></td>
				<td><%=result.getString("prix") %></td>
				<td><%=result.getString("datefabrication") %></td>
				<td><%=result.getString("datexpiration") %></td>
				<td><%=result.getString("fournisseur") %></td>
				<td><%=result.getString("telfournisseur") %></td>
				<td><%=result.getString("emailfournisseur") %></td>
				<td><%=result.getString("adressefournisseur") %></td>
				<td><%=result.getString("etat") %></td>
				<td><a href="update.jsp?id=<%=result.getString("id") %>">Modifier</a></td>
				
				</tr>
				<%

			}
			connection.close();
			
		}catch( Exception e ) {
			e.printStackTrace();
		}
		
	%>
</table>
  <!-- end -->
  <%
  	String id = request.getParameter("id");
  
  if( id != null) {
	  
	  try {
		  
		  Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/gestionstock", "root", "");
		  String query = "SELECT * FROM produits WHERE id = "+id;
		  Statement statement = connection.createStatement();
		  ResultSet result = statement.executeQuery(query);
		  
		  while( result.next()) {
			  %>
			  
			       <div class="container">
  <form action="" method="post">
    <div class="row">
      <div class="col-25">
         <label for="nom"><b>Nom produit</b></label>
      </div>
      <div class="col-75">
        <input type="text" value="<%=result.getString("nomproduit") %>" name="nom"  required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="Qte"><b>Quantite</b></label>
      </div>
      <div class="col-75">
       <input type="tel" value="<%=result.getString("quantite") %>" name="qte" required>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
         <label for="prix"><b>Prix du produit</b></label>
      </div>
      <div class="col-75">
        <input type="text" value="<%=result.getString("prix") %>" name="prix"  required>
      </div>
    </div>
       <div class="row">
      <div class="col-25">
         <label for="etat"><b>Etat</b></label>
      </div>
      <div class="col-75">
      <%
      	if(result.getString("etat").equals("Vente") ) {
      		%>
      		
      		<select id="country" name="etat">
	        	<option></option>
	            <option value="Vente" selected>Vente</option>
	           <option value="Bloque">Bloque</option>
	        </select>
      		
      		<%
      	} else {
      		
		%>
      		
      		<select id="country" name="etat">
	        	<option></option>
	            <option value="Vente">Vente</option>
	           <option value="Bloque" selected>Bloque</option>
	        </select>
      		
      		<%
      	}
      %>
        
      </div>
      </div>
   <!--  <div class="row">
      <div class="col-25">
         <label for="etat"><b>Etat du produit</b></label>
      </div>
      <div class="col-75">
        <select id="country" name="etat">
        <option></option>
          <option value="Disponible">Disponible</option>
           <option value="Non Disponible">Nom Disponible</option>
        </select>
      </div>
      </div>
       -->
     <div class="row">
      <div class="col-25">
         <label for="date"><b>Date de fabrication</b></label>
      </div>
      <div class="col-75">
        <input type="date" value="<%=result.getString("datefabrication") %>" name="date" required>
      </div>
    </div>
       <div class="row">
      <div class="col-25">
         <label for="date"><b>Date d'expiration</b></label>
      </div>
      <div class="col-75">
        <input type="date" value="<%=result.getString("datexpiration") %>" name="datex"  required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
         <label for="Fournisseur"><b>Nom du Fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="text"  value="<%=result.getString("fournisseur") %>" name="fournisseur"  required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
         <label for="telephone"><b>Numero du fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="tel"value="<%=result.getString("telfournisseur") %>" name="telephone"  required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
         <label for="email"><b>Email du fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="email" value="<%=result.getString("emailfournisseur") %>" name="email"  required>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
         <label for="adresse"><b>Adresse du fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="text" value="<%=result.getString("adressefournisseur") %>" name="adress"  required>
      </div>
    </div>
   
    <div class="row">
      <input type="submit" value="Modifier">
    </div>
  </form>
</div> 
			  
			  <%
		  }
		  
	  } catch( Exception e) {
		  e.printStackTrace();
	  }
	  
		
	  
		
  }
  
  %>
  <!-- footer -->
     		<jsp:include page="../hf/footer.jsp" />
   <!-- end -->
</body>