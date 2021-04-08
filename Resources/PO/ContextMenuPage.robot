*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CONTEXTMENU_PAGE_TITLE_LOCATOR}=  xpath=//div[@id="content"]/div/h3
${CONTEXTMENU_PAGE_TITLE}=  Context Menu
${CONTEXTMENU_ZONE_LOCATOR}=  xpath=//div[@id="hot-spot"]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${CONTEXTMENU_PAGE_TITLE_LOCATOR}
    Page Should Contain    ${CONTEXTMENU_PAGE_TITLE}

Move Mouse to Context Menu Zone
    Mouse Over    ${CONTEXTMENU_ZONE_LOCATOR}

Right Click on Context Menu Zone
    Open Context Menu    ${CONTEXTMENU_ZONE_LOCATOR}

Verify Alert Showed
    Alert Should Be Present  You selected a context menu


