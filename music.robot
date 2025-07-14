*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}       chrome
${URL}           https://www.youtube.com/watch?v=hvL1339luv0
${WAIT_TIME}     20s

*** Test Cases ***
Play YouTube Video
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Wait Until Element Is Visible   xpath=//*[@id="movie_player"]   10s

    Click Element    xpath=//body
    Sleep    ${WAIT_TIME}

    Close Browser
