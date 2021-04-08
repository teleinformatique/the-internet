*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${DRAGDROP_PAGE_TITLE}=  Drag and Drop
${DRAGDROP_PAGE_TITLE_LOCATOR}=  xpath=//div[@class="example"]/h3
${BOX_A_LOCATOR}=  xpath=//div[@id="column-a"]
${BOX_B_LOCATOR}=  xpath=//div[@id="column-b"]/header
${BOX_B_HEADING_LOCATOR}=  xpath=//div[@id="column-b"]/header

*** Keywords ***
Verify Page loaded
    Wait Until Page Contains Element    ${DRAGDROP_PAGE_TITLE_LOCATOR}
    Page Should Contain    ${DRAGDROP_PAGE_TITLE}

Move Box A To B
    #Drag And Drop    ${BOX_A_LOCATOR}    ${BOX_B_LOCATOR}
    Drag And Drop By Offset    ${BOX_A_LOCATOR}    150    0


Verify Title Of BOx
    [Arguments]  ${box_title}
    ${title} =  Get Heading Title    ${BOX_B_HEADING_LOCATOR}
    Should Be Equal As Strings    ${title}  ${box_title}

Get Heading Title
    [Arguments]   ${locator}
    ${title} =  Get Text    ${locator}
    [Return]  ${title}