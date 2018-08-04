/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xo.test;

import org.junit.Test;
import xo.model.XO;
import static org.junit.Assert.*;

/**
 *
 * @author User
 */
public class TestinitXO {
    
    public TestinitXO() {
    }
    @Test
    public void testInitXO(){
        XO xo = new XO();
        assertEquals(0, xo.getPlayer1Score());
        assertEquals(0, xo.getPlayer2Score());
        assertEquals(0, xo.getTieScore());
    } 
    

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
}
