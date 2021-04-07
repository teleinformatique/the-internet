*** Settings ***
Library  SeleniumLibrary
Library    XML

*** Variables ***
${ADD_PAGE_TITLE_LOCATOR}=  xpath=//div[@id="content"]/h3
${ADD_PAGE_TITLE}=  Add/Remove Elements
${ADD_BUTTON_LOCATOR}=  xpath=//div[@class="example"]/button
${ADDED_ELEMENT_LIST}=  xpath=//div[@id="elements"]/button
${FIRST_ELEMENT_LOCATOR}=  xpath=//div[@id="elements"]/button[1]


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${ADD_PAGE_TITLE_LOCATOR}
    Page Should Contain    ${ADD_PAGE_TITLE}

Click On Add Element Button
    Click Button    ${ADD_BUTTON_LOCATOR}


Verify Added Element
    [Arguments]   ${number_element}
    Page Should Contain Element    ${ADDED_ELEMENT_LIST}    ${number_element}
    
    
Remove ELement In List
    Click Button    ${FIRST_ELEMENT_LOCATOR}



