*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${DYNAMICSCONTROL_PAGE_TITLE}=  Dynamic Controls
${DYNAMICSCONTROL_PAGE_TITLE_LOCATOR}=  xpath=//div[@class="example"]/h4
${DYNAMICSCONTROL_CHECKBOX_REMOVED_LOCATOR}=  xpath=//div[@id="checkbox"]/input[@type="checkbox"]
${DYNAMICSCONTROL_BUTTON}=  xpath=//form[@id="checkbox-example"]/button
${LOADER_LOCATOR}=  css=#loading
${DYNAMICSCONTROL_CHECKBOX_ADDED_LOCATOR}=  xpath=//div/input[@id="checkbox"]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${DYNAMICSCONTROL_PAGE_TITLE_LOCATOR}
    Page Should Contain  ${DYNAMICSCONTROL_PAGE_TITLE}

Verify Check Box Is Visible
    Page Should Contain Element  ${DYNAMICSCONTROL_CHECKBOX_REMOVED_LOCATOR}

Remove Check Box
    Click On Button  Remove
    Wait Until Page Does Not Contain Element  ${DYNAMICSCONTROL_CHECKBOX_REMOVED_LOCATOR}

Verify Check Box Is Not Visible
    Wait Until Element Is Not Visible  ${DYNAMICSCONTROL_CHECKBOX_REMOVED_LOCATOR}
    Page Should Contain   It's gone!

Add Check Box
    Click On Button  Add

Verify Check Box Added Is Visible
    Wait Until Element Is Visible  ${DYNAMICSCONTROL_CHECKBOX_ADDED_LOCATOR}
    Page Should Contain   It's back!

Click On Button
    [Arguments]  ${text}
    ${button_text}=  Get Text  ${DYNAMICSCONTROL_BUTTON}
    Should Be Equal As Strings  ${text}  ${button_text}
    Click Button   ${DYNAMICSCONTROL_BUTTON}
    Element Should Be Visible  ${LOADER_LOCATOR}
