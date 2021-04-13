*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${DYNAMIC_LOADING_PAGE_TITLE}=  Dynamically Loaded Page Elements
${DYNAMIC_LOADING_PAGE_TITLE_LOCATOR}=  //div[@id="content"]/div/h3
${EXAMPLE1_LINK_TEXT}=  Example 1: Element on page that is hidden

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${DYNAMIC_LOADING_PAGE_TITLE_LOCATOR}
    Page Should Contain  ${DYNAMIC_LOADING_PAGE_TITLE}
    @{listvar}=  Create List  1  2   3
    FOR    ${element}    IN    @{listvar}
        Log    ${element}
    END
    
Click On "Example 1: Element on page that is hidden" Link
    Click Link    ${EXAMPLE1_LINK_TEXT}
