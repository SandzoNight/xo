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
public class TestMarkField {

    @Test
    public void playerXMarkFieldRow0Col0() {
        XO xo = new XO();
        String[][] board = new String[3][3];
        xo.setBoard(board);
        xo.setCurrentPlayer("X");
        xo.markField(0, 0);
        Assert.assertEquals("X", xo.getBoard()[0][0]);

    }

    @Test
    public void playerOMarkFieldRow1Col1() {
        XO xo = new XO();
        String[][] board = new String[3][3];
        xo.setBoard(board);
        xo.setCurrentPlayer("O");
        xo.markField(1, 1);
        Assert.assertEquals("O", xo.getBoard()[1][1]);

    }
}
