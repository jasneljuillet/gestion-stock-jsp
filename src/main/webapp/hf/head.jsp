<link rel="stylesheet" type="text/css" href="./css/head.css"/> 
<link rel="stylesheet" type="text/css" href="../css/head.css"/> 

<style>
@import url('https://fonts.googleapis.com/css2?family=Magra&display=swap');
	.head {
		width: 100%;
		display: flex;
		flex-direction: row;
		justify-content: space-between;
		align-items: flex-end;
	}
	
	#titlehead, #menuitem {
		margin-left: 1rem;
	}
	
	#icon {
		color: #fff;
		cursor: pointer;
		width: 30px;
	}
	
	#items {
		display: flex;
		flex-direction: column;
		display: none;
	}
	
	#items a {
	    text-transform: capitalize;
		text-decoration: blink;
		color: #fff;
		border: 2px solid #1d1e22;
		border-left-width: 0px;
		border-right-width: 0px;
		border-top-width: 0px;
		font-family: Magra, Helvetica, sans-serif;
		margin-bottom: 10px;
	}

</style>


  <div id="hhead" class="head" style="position: fixed;">
	  <div id="titlehead">
	  	<p>bolton gestion de stock</p>
	  </div>
      
    <nav id="menuitem" style="padding-right: 2rem; margin-bottom: 20px; color: white;">
    <a href="../enregistrer" style="color: #fff; text-decoration: blink; margin-right: 20px; 	font-family: Magra, Helvetica, sans-serif;">
    
    <svg id="icon" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
</svg>

    </a>
     	<label>
     		<svg id="icon" onclick="toggleMenu()" xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
				  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 12h16M4 18h16" />
				</svg>
     	</label>
     	
     	<div id="items">
     		<a href="./enregistre.jsp">Enregistrement d'un produit</a>
     		<a href="./produit_disponible.jsp">Produits disponibles</a>
     		<a href="./non_disponible.jsp">produits non disponible</a>
     		<a href="./verification.jsp">Verification</a>
     		<a href="./update.jsp">Mise a jour d'un produit</a>
     		 <a href="./vente.jsp">Vente d'un produit</a>
              <a href="./suppression.jsp">supprimer un produit</a>
                <a href="./sales_report.jsp">rapport de vente des produits</a>
                <a href="./rapport.jsp">rapport de vente par produit</a>
                <a href="./expiration.jsp">produit expirer</a>
                 <a href="./statistics.jsp">Statistique des produits les plus demandes</a>
     	</div>
    </nav>
 </div>

 <script type="text/javascript">
 function toggleMenu() {
	  var menuBox = document.getElementById('items');   
	  var list =  document.getElementById('menuitem');
	  
	  if(menuBox.style.display == "flex") { 
	    menuBox.style.display = "none";
	    document.getElementById('hhead').style.height = "auto";
	  }
	  else {
		  
		menuBox.style.padding = "1rem 1rem";
	    menuBox.style.display = "flex";
	    menuBox.style.backgroundColor = "#5a3205";
	    menuBox.style.borderRadius = " 10px";
	   // document.getElementById('hhead').style.height = " 100%";
	    document.getElementById('menuitem').style.height = " 80%";

	  }
	}
 </script>
 
 
