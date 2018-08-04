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
public class TestNextPlayer {

    public TestNextPlayer() {
    }

    @Test
    public void checkPlayerX() {
        XO xo = new XO();
        xo.setCurrentPlayer("O");
        xo.nextPlayer();
        assertEquals("X", xo.getCurrentPlayer());
    }

    @Test
    public void checkPlayerO() {
        XO xo = new XO();
        xo.setCurrentPlayer("X");
        xo.nextPlayer();
        assertEquals("O", xo.getCurrentPlayer());
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
}
