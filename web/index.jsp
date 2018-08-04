<%-- 
    Document   : index
    Created on : Aug 3, 2018, 3:16:14 PM
    Author     : Pacharapol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OX Game G.1</title>
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body>
        <div class="container">
            <div class="heading">
                <h1>Tic-Tac-Toe</h1>
            </div>
            <div class="board">
                <table class="table">
                    <tr>
                        <td class="mark" id="R1_C1"></td>
                        <td class="mark" id="R1_C2"></td>
                        <td class="mark" id="R1_C3"></td>
                    </tr>
                    <tr>
                        <td class="mark" id="R2_C1"></td>
                        <td class="mark" id="R2_C2"></td>
                        <td class="mark" id="R2_C3"></td>
                    </tr>
                    <tr>
                        <td class="mark" id="R3_C1"></td>
                        <td class="mark" id="R3_C2"></td>
                        <td class="mark" id="R3_C3"></td>
                    </tr>
                </table>
            </div>
            <div class="score">
                <div class="player">
                    <div>Player1 (X)</div>
                    <div id="player1Score">${game.player1Score}</div>
                </div>
                <div class="player">
                    <div>Tie</div>
                    <div id="tieScore">${game.tieScore}</div>
                </div>
                <div class="player">
                    <div>Player2 (O)</div>
                    <div id="player2Score">${game.player2Score}</div>
                </div>
            </div>
        </div>
    </body>
</html>
