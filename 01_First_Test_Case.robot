*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://opensource-demo.orangehrmlive.com/


*** Test Cases ***
My First Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  id:txtUsername  wrong
    Input Text  name:txtPassword  admin123
    Clear Element Text  id:txtUsername
    Input Text  id:txtUsername  Admin
    Click Button  xpath://input[@type='submit']
    Close Browser