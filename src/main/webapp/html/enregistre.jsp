<!DOCTYPE html>
<head>
	<jsp:include page="../hf/header.jsp" />
    <link rel="stylesheet" type="text/css" href="menu.css"/>
</head>

<body>

  <!-- head -->
  	<jsp:include page="../hf/head.jsp" />
    <!-- end -->

    <!-- Back -->
 
  <!-- end -->

    <!-- formulaire -->
    <center>
        <form>
                <label for="nom"> Nom du produit</label>
                <input type="text" id="nom"/> <br/>

                <label for="Qte"> Quantite</label>
                <input type="tel" id="Qte"/> <br/>

                <label for="prix"> Prix</label>
                <input type="tel" id="prix"/> <br/>

                <label for="date"> Date fabrication</label>
                <input type="date" id="date"/> <br/>

                <label for="expiration"> Date expiration</label>
                <input type="date" id="expiration"/> <br/>

                <label for="fournisseur"> Fournisseur</label>
                <input type="text" id="forunisseur"/> <br/>

                <label for="Telfournisseur"> Tel fournisseur</label>
                <input type="tel" id="Telfournisseur"/> <br/>

                <label for="email"> Email fournisseur</label>
                <input type="email" id="email"/> <br/>

                <label for="Adresse"> Adresse fournisseur</label>
                <input type="text" id="Adresse"/> <br/>

                <label> Etat</label>
                <select>
                    <option></option>
                    <option>Bloque</option>
                    <option>Vente</option>
                </select>

                <input type="submit" value="Enregistrer"/> 

        </form>
    </center>
    
    <!-- back -->
        <jsp:include page="../hf/back.jsp" />
    <!-- end -->
    
     <!-- footer -->
     		<jsp:include page="../hf/footer.jsp" />
     <!-- end -->
    
</body>