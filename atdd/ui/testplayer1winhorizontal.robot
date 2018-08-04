*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:8080/doge/Game
${BROWSER}    chrome

*** Test Cases ***
Player 1 (X) ชนะ แนวนอน แถวบน
  เข้าหน้าเว็บ
  Player 1 (X) คลิกช่อง R1,C1
  Player 2 (O) คลิกช่อง R2,C2
  Player 1 (X) คลิกช่อง R1,C3
  Player 2 (O) คลิกช่อง R3,C2
  Player 1 (X) คลิกช่อง R1,C2
  แสดงคะแนน Player 1 เป็น 1
  ปิดหน้าเว็บ

Player 1 (X) ชนะ แนวนอน แถวกลาง
  เข้าหน้าเว็บ
  Player 1 (X) คลิกช่อง R2,C1
  Player 2 (O) คลิกช่อง R1,C2
  Player 1 (X) คลิกช่อง R2,C3
  Player 2 (O) คลิกช่อง R1,C1
  Player 1 (X) คลิกช่อง R2,C2
  แสดงคะแนน Player 1 เป็น 1
  ปิดหน้าเว็บ

Player 1 (X) ชนะ แนวนอน แถวล่าง
  เข้าหน้าเว็บ
  Player 1 (X) คลิกช่อง R3,C1
  Player 2 (O) คลิกช่อง R2,C2
  Player 1 (X) คลิกช่อง R3,C2
  Player 2 (O) คลิกช่อง R1,C1
  Player 1 (X) คลิกช่อง R3,C3
  แสดงคะแนน Player 1 เป็น 1
  ปิดหน้าเว็บ
  
*** Keywords ***
เข้าหน้าเว็บ
  Open Browser    ${URL}    ${BROWSER}
Player 1 (X) คลิกช่อง R1,C1
  Click Element    id=R1_C1
  Wait Until Element Contains    id=R1_C1    X
Player 1 (X) คลิกช่อง R1,C2
  Click Element    id=R1_C2
  Wait Until Element Contains    id=R1_C2    X
Player 1 (X) คลิกช่อง R1,C3
  Click Element    id=R1_C3
  Wait Until Element Contains    id=R1_C3    X
  
Player 1 (X) คลิกช่อง R2,C1
  Click Element    id=R2_C1
  Wait Until Element Contains    id=R2_C1    X
Player 1 (X) คลิกช่อง R2,C2
  Click Element    id=R2_C2
  Wait Until Element Contains    id=R2_C2    X
Player 1 (X) คลิกช่อง R2,C3
  Click Element    id=R2_C3
  Wait Until Element Contains    id=R2_C3    X

Player 1 (X) คลิกช่อง R3,C1
  Click Element    id=R3_C1
  Wait Until Element Contains    id=R3_C1    X
Player 1 (X) คลิกช่อง R3,C2
  Click Element    id=R3_C2
  Wait Until Element Contains    id=R3_C2    X
Player 1 (X) คลิกช่อง R3,C3
  Click Element    id=R3_C3
  Wait Until Element Contains    id=R3_C3    X

Player 2 (O) คลิกช่อง R1,C1
  Click Element    id=R1_C1
  Wait Until Element Contains    id=R1_C1    O
Player 2 (O) คลิกช่อง R1,C2
  Click Element    id=R1_C2
  Wait Until Element Contains    id=R1_C2    O
Player 2 (O) คลิกช่อง R2,C2
  Click Element    id=R2_C2
  Wait Until Element Contains    id=R2_C2    O
Player 2 (O) คลิกช่อง R3,C2
  Click Element    id=R3_C2
  Wait Until Element Contains    id=R3_C2    O

แสดงคะแนน Player 1 เป็น 1
  Wait Until Element Contains    id=player1Score    1
ปิดหน้าเว็บ
  Close Browser

