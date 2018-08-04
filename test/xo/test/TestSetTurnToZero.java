/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xo.test;

import org.junit.Assert;
import org.junit.Test;
import xo.model.XO;

/**
 *
 * @author MSSG
 */
public class TestSetTurnToZero {
    @Test
    public void setTurnToZero(){
        XO xo=new XO();
        xo.setTurn(0);
        Assert.assertEquals(0, xo.getTurn());
        
    } 
}
