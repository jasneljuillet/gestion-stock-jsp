package com.gestionstock.produit.model;

public class Produit {
	
	private String numero;
	private int quantite;
	private int prix;
	private String status;
	private String etat;
	private String datefabrication;
	private String dateexpiration;
	private String nomfournisseur;
	private String adressefournisseur;
	private String emailfournisseur;
	private int numerofournisseur;
	
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) {
		this.prix = prix;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	public String getDatefabrication() {
		return datefabrication;
	}
	public void setDatefabrication(String datefabrication) {
		this.datefabrication = datefabrication;
	}
	public String getDateexpiration() {
		return dateexpiration;
	}
	public void setDateexpiration(String dateexpiration) {
		this.dateexpiration = dateexpiration;
	}
	public String getNomfournisseur() {
		return nomfournisseur;
	}
	public void setNomfournisseur(String nomfournisseur) {
		this.nomfournisseur = nomfournisseur;
	}
	public String getAdressefournisseur() {
		return adressefournisseur;
	}
	public void setAdressefournisseur(String adressefournisseur) {
		this.adressefournisseur = adressefournisseur;
	}
	public String getEmailfournisseur() {
		return emailfournisseur;
	}
	public void setEmailfournisseur(String emailfournisseur) {
		this.emailfournisseur = emailfournisseur;
	}
	public int getNumerofournisseur() {
		return numerofournisseur;
	}
	public void setNumerofournisseur(int numerofournisseur) {
		this.numerofournisseur = numerofournisseur;
	}
	
}
