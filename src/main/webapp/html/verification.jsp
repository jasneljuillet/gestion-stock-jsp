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
	padding: 4rem 4rem;
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
	   #table {
    	
    	  padding: 2rem 2rem;
    }
    
    #table td {
      	border: 1px solid #ddd;
  		padding: 10px;
    }
	
    </style>
</head>

<body>

    <div class="center">
        <h3 id="msg"></h3>
	     <h1>Entre le Nom ou le Fournisseur du Produits</h1>
	      <p>On veille attentivement sur votre affaire! </p>
     </div>
  <!-- form -->
    	<form class="example">
		  <input type="text" placeholder="Rechercher un produit" name="mot" required >
		  <button type="submit"><i class="fa fa-search"></i></button>
		</form>
  <!-- end -->
  
	<%
	
	String mot = request.getParameter("mot");
	
	if(mot != null) {
		//System.out.println(mot);
	try {
			
			Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/gestionstock", "root", "");
			Statement statement = connection.createStatement();
			String query = "SELECT * FROM produits WHERE LOWER(nomproduit) LIKE "+ " '%" +mot.toLowerCase()+ "%' "+ " OR LOWER(fournisseur) LIKE '%"+mot.toLowerCase()+ "%' ";

			ResultSet result = statement.executeQuery(query);
			
			System.out.println(query);
			if( result.isBeforeFirst()) {
				%>
				
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
					</tr>
				
				<%
				
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
					
					</tr>
					
					<%
					
				}
			} else {
				%>
				
				<script type="text/javascript">
					alert("Pas de resultat pour la recherche");
				</script>
				
				<%
			}
			
		
			
			%>
			</table>
			<%
			connection.close();
			
		}catch( Exception e ) {
			e.printStackTrace();
		}
		
	}
	
	%>
	
 <!-- head -->
  	<jsp:include page="../hf/head.jsp" />
    <!-- end -->

  
   <!-- footer -->
     		<jsp:include page="../hf/footer.jsp" />
   <!-- end -->
</body>