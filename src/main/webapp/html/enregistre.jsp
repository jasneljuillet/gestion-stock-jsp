<!DOCTYPE html>
<head>
	<jsp:include page="../hf/header.jsp" />
    <link rel="stylesheet" type="text/css" href="../css/enregistre.css"/>
</head>

<body>

  <!-- head -->
  	<jsp:include page="../hf/head.jsp" />
    <!-- end -->

    <!-- Back -->
 
  <!-- end -->

    <!-- formulaire -->
    <div class="center">
	     <h1>Enregistrer un produit</h1>
	      <p>Remplissez tous les champs!</p>
     </div>
     
     <div class="container">
  <form action=" <%= request.getContextPath() %>/enregistre" method="post">
    <div class="row">
      <div class="col-25">
         <label for="nom"><b>Nom produit</b></label>
      </div>
      <div class="col-75">
        <input type="text" placeholder="Entrer le nom" name="nom"  required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="Qte"><b>Quantite</b></label>
      </div>
      <div class="col-75">
       <input type="tel" placeholder="Entrer la quantite" name="gte" required>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
         <label for="prix"><b>Prix du produit</b></label>
      </div>
      <div class="col-75">
        <input type="text" placeholder="Entrer le prix" name="prix"  required>
      </div>
    </div>
       <div class="row">
      <div class="col-25">
         <label for="etat"><b>Status</b></label>
      </div>
      <div class="col-75">
        <select id="country" name="status">
        <option></option>
          <option value="Vente">Vente</option>
           <option value="Bloque">Bloque</option>
        </select>
      </div>
      </div>
    <div class="row">
      <div class="col-25">
         <label for="etat"><b>Etat du produit</b></label>
      </div>
      <div class="col-75">
        <select id="country" name="etat">
        <option></option>
          <option value="Disponible">Disponible</option>
           <option value="Nom Disponible">Nom Disponible</option>
        </select>
      </div>
      </div>
     <div class="row">
      <div class="col-25">
         <label for="date"><b>Date de fabrication</b></label>
      </div>
      <div class="col-75">
        <input type="date" placeholder="Entrer la date de fabrication" name="date" required>
      </div>
    </div>
       <div class="row">
      <div class="col-25">
         <label for="date"><b>Date d'expiration</b></label>
      </div>
      <div class="col-75">
        <input type="date" placeholder="Entrer la date d'expiration" name="datex"  required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
         <label for="Fournisseur"><b>Nom du Fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="text" placeholder="Nom du fournisseur" name="fournisseur"  required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
         <label for="telephone"><b>Numero du fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="tel" placeholder="Telephone du fournisseur" name="telephone"  required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
         <label for="email"><b>Email du fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="email" placeholder="Email du fournisseur" name="email"  required>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
         <label for="adresse"><b>Adresse du fournisseur</b></label>
      </div>
      <div class="col-75">
        <input type="text" placeholder="adresse du fournisseur" name="adress"  required>
      </div>
    </div>
   
    <div class="row">
      <input type="submit" value="Enregistré">
    </div>
  </form>
</div> 
  	 <!-- end -->
    
    <!-- back -->
        <jsp:include page="../hf/back.jsp" />
    <!-- end -->
    
     <!-- footer -->
     		<jsp:include page="../hf/footer.jsp" />
     <!-- end -->
    
</body>