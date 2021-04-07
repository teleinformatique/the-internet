*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGOUT_BUTTON}=   xpath=//div[@id="content"]/div/a

*** Keywords ***
Verify Login Success
    [Arguments]  @{alert_message}
    Page Should Contain    @{alert_message}

Click On Logout Button
    Wait Until Page Contains Element   ${LOGOUT_BUTTON}
    Click Link    ${LOGOUT_BUTTON}




