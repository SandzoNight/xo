/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xo.test;

import static org.junit.Assert.assertEquals;
import org.junit.Test;
import xo.model.XO;

/**
 *
 * @author User
 */
public class TestIncreseTurn {
    
    public TestIncreseTurn() {
    }
    
    @Test
    public void whenFirstTurn(){
        XO xo = new XO();
        xo.setTurn(0);
        xo.increseTurn();
        assertEquals(1, xo.getTurn());
    }
    @Test
    public void whenSecondTurn(){
        XO xo = new XO();
        xo.setTurn(2);
        xo.increseTurn();
        assertEquals(3, xo.getTurn());
    }
    @Test
    public void whenThirdTurn(){
        XO xo = new XO();
        xo.setTurn(3);
        xo.increseTurn();
        assertEquals(4, xo.getTurn());
    }
    @Test
    public void whenForthTurn(){
        XO xo = new XO();
        xo.setTurn(4);
        xo.increseTurn();
        assertEquals(5, xo.getTurn());
    }
    @Test
    public void whenFifthTurn(){
        XO xo = new XO();
        xo.setTurn(5);
        xo.increseTurn();
        assertEquals(6, xo.getTurn());
    }
    @Test
    public void whenSixthTurn(){
        XO xo = new XO();
        xo.setTurn(6);
        xo.increseTurn();
        assertEquals(7, xo.getTurn());
    }
    @Test
    public void whenSeventhTurn(){
        XO xo = new XO();
        xo.setTurn(7);
        xo.increseTurn();
        assertEquals(8, xo.getTurn());
    }
    @Test
    public void whenEighthTurn(){
        XO xo = new XO();
        xo.setTurn(8);
        xo.increseTurn();
        assertEquals(9, xo.getTurn());
    }
    
}
