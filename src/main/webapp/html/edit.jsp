<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.PreparedStatement" %>
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
</head>

<body>
	 <!-- head -->
  	<jsp:include page="../hf/head.jsp" />
    <!-- end -->
    
    <!-- Back -->
    	<jsp:include page="../hf/back.jsp" />
  <!-- end -->
  
  <!-- formulaire -->
    <div class="center">
    	 <h3 id="msg"></h3>
	     <h1>Modifier un produit</h1>
	      <p>Remplissez tous les champs!</p>
     </div>
     
    <%
	String id = request.getParameter("id");
	try {
		
		Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/gestionstock", "root", "");
		Statement statement = connection.createStatement();
		ResultSet result = statement.executeQuery("SELECT * FROM produits WHERE id =  "+id);
		//result.setString(1, id);
		
		while( result.next() ) {
			
			%>
			
			   <div class="container">
  <form action=" <%= request.getContextPath() %>/enregistrer" method="post">
    <div class="row">
      <div class="col-25">
         <label for="nom"><b>Nom produit</b></label>
      </div>
      <div class="col-75">
        <input type="text" placeholder="Entrer le nom" name="nom" value="<%=result.getString("nomproduit") %>"  required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="Qte"><b>Quantite</b></label>
      </div>
      <div class="col-75">
       <input type="tel" placeholder="Entrer la quantite" name="qte" value="<%=result.getString("quantite") %>" required>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
         <label for="prix"><b>Prix du produit</b></label>
      </div>
      <div class="col-75">
        <input type="text" placeholder="Entrer le prix" name="prix" value="<%=result.getString("prix") %>" required>
      </div>
    </div>
       <div class="row">
      <div class="col-25">
         <label for="etat"><b>Etat</b></label>
      </div>
      <div class="col-75">
        <select id="country" name="etat">
          <% 
          	String etat = result.getString("etat");
        		 if(etat.equals("Bloque")) {
        			 %>
        			 <option value="Bloque" selected>Bloque</option>
        			 <option value="Vente">Vente</option>
        			<%
        		 } else {
        			 %>
        			  <option value="Vente" selected>Vente</option>
        			  <option value="Bloque">Bloque</option>
        			  <%
        		 }
          %>
        </select>
      </div>
      </div>
     <div class="row">
      <div class="col-25">
         <label for="date"><b>Date de fabrication</b></label>
      </div>
      <div class="col-75">
        <input type="date" placeholder="Entrer la date de fabrication" name="date" value="<%=result.getString("datefabrication") %>" required>
      </div>
    </div>
       <div class="row">
      <div class="col-25">
         <label for="date"><b>Date d'expiration</b></label>
      </div>
      <div class="col-75">
        <input type="date" placeholder="Entrer la date d'expiration" name="datex" value="<%=result.getString("datexpiration") %>" required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
         <label for="Fournisseur"><b>Nom du Fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="text" placeholder="Nom du fournisseur" name="fournisseur" value="<%=result.getString("fournisseur") %>" required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
         <label for="telephone"><b>Numero du fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="tel" placeholder="Telephone du fournisseur" name="telephone" value="<%=result.getString("telfournisseur") %>" required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
         <label for="email"><b>Email du fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="email" placeholder="Email du fournisseur" name="email" value="<%=result.getString("emailfournisseur") %>" required>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
         <label for="adresse"><b>Adresse du fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="text" placeholder="adresse du fournisseur" name="adress" value="<%=result.getString("adressefournisseur") %>" required>
      </div>
    </div>
    <input style="display: none;" type="text" placeholder="adresse du fournisseur" name="id" value="<%=id %>" required>
    <div class="row">
      <input type="submit" value="Modifier" name="snd">
    </div>
  </form>
</div> 
			
			<%

		}
		connection.close();
		
	}catch( Exception e ) {
		e.printStackTrace();
	}
  %>
   
   <!-- footer -->
     		<jsp:include page="../hf/footer.jsp" />
   <!-- end -->
</body>