/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xo.model;

/**
 *
 * @author sgnsys3
 */
public class XO {

    private int player1Score;
    private int player2Score;
    private int tieScore;
    private int turn;
    private String[][] board;
    private String currentPlayer;

    public XO() {
        this.player1Score = 0;
        this.player2Score = 0;
        this.tieScore = 0;
        this.turn = 0;
        this.currentPlayer = "X";
        createEmptyBoard();
    }

    public int getPlayer1Score() {
        return player1Score;
    }

    public void setPlayer1Score(int player1Score) {
        this.player1Score = player1Score;
    }

    public int getPlayer2Score() {
        return player2Score;
    }

    public void setPlayer2Score(int player2Score) {
        this.player2Score = player2Score;
    }

    public int getTieScore() {
        return tieScore;
    }

    public void setTieScore(int tieScore) {
        this.tieScore = tieScore;
    }

    public int getTurn() {
        return turn;
    }

    public void setTurn(int turn) {
        this.turn = turn;
    }

    public String[][] getBoard() {
        return board;
    }

    public void setBoard(String[][] board) {
        this.board = board;
    }

    public String getCurrentPlayer() {
        return currentPlayer;
    }

    public void setCurrentPlayer(String currentPlayer) {
        this.currentPlayer = currentPlayer;
    }
  
    public void markField(int row, int col) {
        board[row][col] = currentPlayer;
    }
    
    public void createEmptyBoard() {
        this.board = new String[3][3];
    }
  
    public boolean checkHorizontalWin() {
        for(int i=0;i<3;i++) {
            if(this.board[i][0] != null && this.board[i][0].equals(this.board[i][1]) && this.board[i][1].equals(this.board[i][2])) {
                return true;
            }
        }
        return false;
    }
  
    public void increasePlayerScore() {
        if (currentPlayer == "X") {
            player1Score++;
        } else {
            player2Score++;
        }
    }
  
    public void nextPlayer() {
        if (this.currentPlayer.equals("X")) {
            setCurrentPlayer("O");
        } else {
            setCurrentPlayer("X");
        }
    }

    public void increseTurn() {
        this.turn += 1;
    }
}
