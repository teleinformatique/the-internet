*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PAGE_TITLE_LOCATOR}=  css=.heading
${HOME_PAGE_TITLE}=  Welcome to the-internet
${FORM_AUTH_LINK_TEXT}=  Form Authentication
${ADD_PAGE_LINK_TEXT}=  Add/Remove Elements
${CHECKBOX_PAGE_LINK}=  Checkboxes
${CONTEXTMENU_PAGE_LINK_TEXT}=  Context Menu
${DRAGDROP_LINK_TEXT}=  Drag and Drop
${DROPDOWN_LINK_TEXT}=  Dropdown


*** Keywords ***
Load
    Go to  ${HOME_PAGE_URL}

Verify Page Loaded
    Wait Until Page Contains    ${HOME_PAGE_TITLE}
    
Click On Auth Link Text
    Click Link    ${FORM_AUTH_LINK_TEXT}

Click On "Add/Remove Elements" Link
    Click Link  ${ADD_PAGE_LINK_TEXT}
    
Click On "Checkboxes" Link Text
    Click Link    ${CHECKBOX_PAGE_LINK}
    
Click on "Context Menu" Link Text
    Click Link    ${CONTEXTMENU_PAGE_LINK_TEXT}

Click on "Drag and Drop" Link Text
    Click Link  ${DRAGDROP_LINK_TEXT}

Click on "DropDown" Link Text
    Click Link  ${DROPDOWN_LINK_TEXT}

