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
                <form method="post" action="/doge/Game" id="form">
                    <input type="hidden" id="hiddenField" name="choose">
                    <table class="table">
                        <tr>
                            <td class="mark" id="R1_C1" ${ game.board[0][0] == null ? "onclick='clickChoose(\"00\")'" : "" }>
                                ${game.board[0][0] == null
                                  ? ''
                                  : game.board[0][0]
                                }
                            </td>
                            <td class="mark" id="R1_C2" ${ game.board[0][1] == null ? "onclick='clickChoose(\"01\")'" : "" }>
                                ${game.board[0][1] == null
                                  ? ''
                                  : game.board[0][1]
                                }
                            </td>
                            <td class="mark" id="R1_C3" ${ game.board[0][2] == null ? "onclick='clickChoose(\"02\")'" : "" }>
                                ${game.board[0][2] == null
                                  ? ''
                                  : game.board[0][2]
                                }
                            </td>
                        </tr>
                        <tr>
                            <td class="mark" id="R2_C1" ${ game.board[1][0] == null ? "onclick='clickChoose(\"10\")'" : "" }>
                                ${game.board[1][0] == null
                                  ? ''
                                  : game.board[1][0]
                                }
                            </td>
                            <td class="mark" id="R2_C2" ${ game.board[1][1] == null ? "onclick='clickChoose(\"11\")'" : "" }>
                                ${game.board[1][1] == null
                                  ? ''
                                  : game.board[1][1]
                                }
                            </td>
                            <td class="mark" id="R2_C3" ${ game.board[1][2] == null ? "onclick='clickChoose(\"12\")'" : "" }>
                                ${game.board[1][2] == null
                                  ? ''
                                  : game.board[1][2]
                                }
                            </td>
                        </tr>
                        <tr>
                            <td class="mark" id="R3_C1" ${ game.board[2][0] == null ? "onclick='clickChoose(\"20\")'" : "" }>
                                ${game.board[2][0] == null
                                  ? ''
                                  : game.board[2][0]
                                }
                            </td>
                            <td class="mark" id="R3_C2" ${ game.board[2][1] == null ? "onclick='clickChoose(\"21\")'" : "" }>
                                ${game.board[2][1] == null
                                  ? ''
                                  : game.board[2][1]
                                }
                            </td>
                            <td class="mark" id="R3_C3" ${ game.board[2][2] == null ? "onclick='clickChoose(\"22\")'" : "" }>
                                ${game.board[2][2] == null
                                  ? ''
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
        <script>
            function clickChoose(choose) {
                document.getElementById("hiddenField").value = choose
                document.getElementById("form").submit()
            }
        </script>
    </body>
</html>
