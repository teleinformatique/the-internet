*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${DROPDOWN_PAGE_TITLE}=  Dropdown List
${DROPDOWN_PAGE_TITLE_LOCATOR}=  xpath=//div[@class="example"]/h3
${DROPDOOWN_MENU}=   css=#dropdown

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${DROPDOWN_PAGE_TITLE_LOCATOR}
    Page Should Contain    ${DROPDOWN_PAGE_TITLE}

Verify Option "Please select an option" is Selected
    List Selection Should Be  ${DROPDOOWN_MENU}  Please select an option

Select Option
    Select From List By Label    ${DROPDOOWN_MENU}  Option 1
    
Verify Option Is Select
    List Selection Should Be    ${DROPDOOWN_MENU}  Option 1