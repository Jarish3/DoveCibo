package DoveCiboPK;

import DoveCiboPK.*;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author stefano
 */
@WebServlet(name = "ServletAggiungiOwner", urlPatterns = {"/ServletAggiungiOwner"})
public class ServletAggiungiOwner extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {

            //CREATORE
            Cookie cookies[] = request.getCookies();
            String NickName = cookies[1].getName();
            User u = new User(-1, "", "", NickName, "", "", "");
            new DB_Manager().CheckProfilo(u);
            
            //RISTORANTE
            Integer idR = Integer.parseInt(request.getParameter("ristorante"));
            
            //INSERIMENTO DB
            if(! new DB_Manager().inserisciRelazioneOwnerRestaurant(idR, u.getId()));
                 request.getRequestDispatcher("erroreConnessione.jsp").forward(request, response);          

            response.sendRedirect("/DoveCiboGit/ServletGetRistorante?idR="+idR);        
        } catch (SQLException ex) {
            request.setAttribute("error", ex.toString());
            request.getRequestDispatcher("errore.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}