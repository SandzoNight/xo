/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xo.test;

import java.util.HashSet;
import java.util.Set;
import org.junit.Test;
import org.junit.Assert;
import xo.model.XO;

/**
 *
 * @author sgnsys3
 */
public class TestIncreasePlayer {
    
    public TestIncreasePlayer() {
    }
    
    

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
    @Test
    public void player1ScoreMustBeIncrease() {
        XO game = new XO();
        game.setCurrentPlayer("X");
        game.setPlayer1Score(0);
        game.setPlayer2Score(2);
 
        game.increasePlayerScore();
        
        Assert.assertEquals(1, game.getPlayer1Score());
        Assert.assertEquals(2, game.getPlayer2Score());
    }
    
    @Test
    public void player2ScoreMustBeIncrease(){
        XO game = new XO();
        game.setCurrentPlayer("O");
        game.setPlayer1Score(1);
        game.setPlayer2Score(2);
        
        game.increasePlayerScore();
        
        Assert.assertEquals(1, game.getPlayer1Score());
        Assert.assertEquals(3, game.getPlayer2Score());
    }
}
