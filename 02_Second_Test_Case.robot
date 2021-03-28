*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://www.facebook.com/


*** Test Cases ***
My Second Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

    Input Text  name:firstname  lokesh
    Input Text  xpath://input[@name='lastname']  sharma



    Input Text  xpath://input[@name='reg_email__']  lokesh@gmail.com
    Input Text  id:u_0_u  lokesh@gmail.com
    Input Text  xpath://input[@name='reg_passwd__']  1234567


    Select From List By Index  name:birthday_day  21
    Select From List By Value  id:month  10
    Select From List By Label  name:birthday_year  1994

    Select Radio Button  sex  2

    Click Button  name:websubmit

    Close Browser