/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xo.test;

import org.junit.Assert;
import org.junit.Test;
import static org.junit.Assert.*;
import xo.model.XO;

/**
 *
 * @author User
 */
public class TestCreateEmptyBoard {

    public TestCreateEmptyBoard() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
    @Test
    public void boardMustBeEmpty() {
        XO game = new XO();
        String[][] board = {
            {null, null, "X"},
            {null, "O", null},
            {null, null, null},};
        game.setBoard(board);
        game.createEmptyBoard();

        String[] oneDimensionConparator = new String[]{null, null, null};
        assertArrayEquals(oneDimensionConparator, game.getBoard()[0]);
        assertArrayEquals(oneDimensionConparator, game.getBoard()[1]);
        assertArrayEquals(oneDimensionConparator, game.getBoard()[2]);
    }
}
