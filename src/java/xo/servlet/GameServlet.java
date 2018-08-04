/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import xo.model.XO;
/**
 *
 * @author WindowS
 */
public class GameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        XO game = new XO();
        session.setAttribute("game", game);
        
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String choose = request.getParameter("choose");
        int row = Integer.parseInt(choose.substring(0, 1));
        int column = Integer.parseInt(choose.substring(1, 2));
        HttpSession session = request.getSession(true);
        XO game = (XO)session.getAttribute("game");
        game.increseTurn();
        game.markField(row, column);
        if (game.checkHorizontalWin()) {
            game.increasePlayerScore();
            game.setTurnToZero();
            game.createEmptyBoard();
            game.setCurrentPlayer("X");
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }
        game.nextPlayer();
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
