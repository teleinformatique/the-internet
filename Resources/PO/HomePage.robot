*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PAGE_TITLE_LOCATOR}=  css=.heading
${HOME_PAGE_TITLE}=  Welcome to the-internet
${FORM_AUTH_LINK_TEXT}=  Form Authentication
${ADD_PAGE_LINK_TEXT}=  Add/Remove Elements

*** Keywords ***
Load
    Go to  ${HOME_PAGE_URL}

Verify Page Loaded
    Wait Until Page Contains    ${HOME_PAGE_TITLE}
    
Click On Auth Link Text
    Click Link    ${FORM_AUTH_LINK_TEXT}

Click On "Add/Remove Elements" Link
    Click Link  ${ADD_PAGE_LINK_TEXT}

