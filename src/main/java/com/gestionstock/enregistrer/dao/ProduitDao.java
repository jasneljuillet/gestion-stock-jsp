package com.gestionstock.enregistrer.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.gestionstock.produit.model.Produit;

public class ProduitDao {

	public int enregistre(Produit produit) throws ClassNotFoundException {
		
		String insert = "INSERT INTO produits" + " ( nomproduit, quantite, prix, datefabrication, datexpiration, "
				+ "fournisseur, telfournisseur, emailfournisseur, adressefournisseur, etat ) VALUES " + 
				" (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);" ;
		
		int result = 0;
		Class.forName("com.mysql.jdbc.Driver");
		
		try( Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/gestionstock", "root", "");
				PreparedStatement preparedStatement = connection.prepareStatement(insert)) {
			
			preparedStatement.setString(1, produit.getNomproduit());
			preparedStatement.setString(2, produit.getQuantite());
			preparedStatement.setString(3, produit.getPrix());
			preparedStatement.setString(4, produit.getDatefabrication());
			preparedStatement.setString(5, produit.getDateexpiration());
			preparedStatement.setString(6, produit.getNomfournisseur());
			preparedStatement.setString(7, produit.getNumerofournisseur());
			preparedStatement.setString(8, produit.getEmailfournisseur());
			preparedStatement.setString(9, produit.getAdressefournisseur());
			preparedStatement.setString(10, produit.getEtat());
			
		//System.out.println(preparedStatement);
			
			result = preparedStatement.executeUpdate();
					
				} catch(SQLException e) {
					e.printStackTrace();
				}
		return result;
		
	}
}
