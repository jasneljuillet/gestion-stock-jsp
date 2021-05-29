package com.gestion;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gestionstock.enregistrer.dao.ProduitDao;
import com.gestionstock.produit.model.Produit;

/**
 * Servlet implementation class Gestionstock
 */
@WebServlet("/enregistrer")
public class Gestionstock extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private ProduitDao produitdao = new ProduitDao();
	
    public Gestionstock() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		Produit produit = new Produit();
		
		produit.setNomproduit(request.getParameter("nom"));
		produit.setQuantite(request.getParameter("qte"));
		produit.setPrix(request.getParameter("prix"));
		produit.setStatus(request.getParameter("status"));
		produit.setEtat(request.getParameter("etat"));
		produit.setDatefabrication(request.getParameter("date"));
		produit.setDateexpiration(request.getParameter("datex"));
		produit.setNomfournisseur(request.getParameter("fournisseur"));
		produit.setAdressefournisseur(request.getParameter("adress"));
		produit.setEmailfournisseur(request.getParameter("email"));
		produit.setNumerofournisseur(request.getParameter("telephone"));
			
		try {
			produitdao.enregistre(produit);
			request.getSession().setAttribute("message", "👍 Produit Enregistré Avec Succès");
			response.sendRedirect("/projet-jsp/html/enregistre.jsp");
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}

}
