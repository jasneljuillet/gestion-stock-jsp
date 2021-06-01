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
	     <h1>Supprimer un Produits</h1>
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
				<td><%=result.getString("etat") %></td>
				<td><a onclick="if (confirm('Etes-vous sûr que vous voulez supprimer?')) form.action='/Config?pg=FIBiller&amp;cmd=delete'; else return false;" href="suppression.jsp?id=<%=result.getString("id") %>">Supprimer</a></td>
				
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
  	 if( id != null ) {
  		Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/gestionstock", "root", "");
		Statement statement = connection.createStatement();
		PreparedStatement stmt = connection.prepareStatement("DELETE from produits where id=? ");
		stmt.setString(1, id);
		stmt.executeUpdate();
		connection.close();
		%>
		
		<script type="text/javascript">
			window.location.replace("/projet-jsp/html/suppression.jsp");
		</script>
		
		<%
  	 } else {
  		 
  	 }
  %>
  
  
  <!-- footer -->
     		<jsp:include page="../hf/footer.jsp" />
   <!-- end -->
</body>