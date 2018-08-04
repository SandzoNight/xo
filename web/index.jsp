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
                <form method="post" action="/doge/Game">
                    <table class="table">
                        <tr>
                            <td class="mark" id="R1_C1">
                                ${game.board[0][0] == null
                                  ? '<button name="choose" value="00" type="submit">เลือก</button>'
                                  : game.board[0][0]
                                }
                            </td>
                            <td class="mark" id="R1_C2">
                                ${game.board[0][1] == null
                                  ? '<button name="choose" value="01" type="submit">เลือก</button>'
                                  : game.board[0][1]
                                }
                            </td>
                            <td class="mark" id="R1_C3">
                                ${game.board[0][2] == null
                                  ? '<button name="choose" value="02" type="submit">เลือก</button>'
                                  : game.board[0][2]
                                }
                            </td>
                        </tr>
                        <tr>
                            <td class="mark" id="R2_C1">
                                ${game.board[1][0] == null
                                  ? '<button name="choose" value="10" type="submit">เลือก</button>'
                                  : game.board[1][0]
                                }
                            </td>
                            <td class="mark" id="R2_C2">
                                ${game.board[1][1] == null
                                  ? '<button name="choose" value="11" type="submit">เลือก</button>'
                                  : game.board[1][1]
                                }
                            </td>
                            <td class="mark" id="R2_C3">
                                ${game.board[1][2] == null
                                  ? '<button name="choose" value="12" type="submit">เลือก</button>'
                                  : game.board[1][2]
                                }
                            </td>
                        </tr>
                        <tr>
                            <td class="mark" id="R3_C1">
                                ${game.board[2][0] == null
                                  ? '<button name="choose" value="20" type="submit">เลือก</button>'
                                  : game.board[2][0]
                                }
                            </td>
                            <td class="mark" id="R3_C2">
                                ${game.board[2][1] == null
                                  ? '<button name="choose" value="21" type="submit">เลือก</button>'
                                  : game.board[2][1]
                                }
                            </td>
                            <td class="mark" id="R3_C3">
                                ${game.board[2][2] == null
                                  ? '<button name="choose" value="22" type="submit">เลือก</button>'
                                  : game.board[2][2]
                                }
                            </td>
                        </tr>
                    </table>
                <form>
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
