package com.gestionstock.enregistrer.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.gestionstock.produit.model.Produit;

public class ProduitDao {

	public int enregistre(Produit produit) throws ClassNotFoundException {
		
		String insert = "INSERT INTO produits" + " ( id, nomproduit, quantite, prix, datefabrication, datexpiration, "
				+ "fournisseur, telfournisseur, emailfournisseur, adressefournisseur, etat, status ) VALUES " + 
				" (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);" ;
		
		int result = 0;
		Class.forName("com.mysql.jdbc.Driver");
		
		try( Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/3306/mysql_database?useSSL=false", "root", "");
				PreparedStatement preparedStatement = connection.prepareStatement(insert)) {
			
			preparedStatement.setInt(1, 1);
			preparedStatement.setString(2, produit.getNumero());
			preparedStatement.setString(3, produit.getQuantite());
			preparedStatement.setString(4, produit.getPrix());
			preparedStatement.setString(5, produit.getStatus());
			preparedStatement.setString(6, produit.getEtat());
			preparedStatement.setString(7, produit.getDatefabrication());
			preparedStatement.setString(8, produit.getDateexpiration());
			preparedStatement.setString(9, produit.getNomfournisseur());
			preparedStatement.setString(10, produit.getAdressefournisseur());
			preparedStatement.setString(11, produit.getEmailfournisseur());
			preparedStatement.setString(12, produit.getNumerofournisseur());
			
			System.out.println(preparedStatement);
			
			result = preparedStatement.executeUpdate();
					
				} catch(SQLException e) {
					e.printStackTrace();
				}
		return result;
		
	}
}
