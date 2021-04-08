*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CHECKBOX_PAGE_TITLE_LOCATOR}=  xpath=//div[@class="example"]/h3
${CHECKBOX_PAGE_TITLE}=  Checkboxes
${CHECKED_BOX}=  xpath=//form[@id="checkboxes"]/input[2]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${CHECKBOX_PAGE_TITLE_LOCATOR}
    Page Should Contain    ${CHECKBOX_PAGE_TITLE}

Verify Second CheckBox Is Checked
    Checkbox Should Be Selected    ${CHECKED_BOX}

Uncheck Checked CheckBox
    Click Element    ${CHECKED_BOX}
    
Verify Second CheckBox Is Not Checked
    Checkbox Should Not Be Selected    ${CHECKED_BOX}


