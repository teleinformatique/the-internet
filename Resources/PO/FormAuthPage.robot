*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_PAGE_TITLE}=  Login Page
${AUTH_USERNAME_FIELD}=  id=username
${AUTH_PASSWORD_FIELD}=  id=password
${AUTH_SUBMIT_BUTTON}=  css=button[type="submit"]
${LOGOUT_MESSAGE}=  You logged out of the secure area!


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${LOGIN_PAGE_TITLE}


Authenticate User
    [Arguments]  &{user_infos}
    Fill Password Field   ${user_infos.password}
    Fill Username Field   ${user_infos.username}
    Click Submit Button

Fill Username Field
    [Arguments]  ${username}
    Input Text    ${AUTH_USERNAME_FIELD}    ${username}

Fill Password Field
    [Arguments]  ${password}
    Input Text      ${AUTH_PASSWORD_FIELD}      ${password}
    

Click Submit Button
    Click Button    ${AUTH_SUBMIT_BUTTON}

Success Login Message
    [Arguments]  ${alert_message}
    Page Should Contain    ${alert_message}

Verify Logout Succes
    Wait Until Page Contains     ${LOGIN_PAGE_TITLE}
    Page Should Contain    ${LOGOUT_MESSAGE}
