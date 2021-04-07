*** Settings ***
Resource  ./PO/HomePage.robot
Resource  ./PO/FormAuthPage.robot
Resource  ./PO/SecurePage.robot
Resource  ./PO/AddRemoveElementPage.robot

*** Variables ***


*** Keywords ***
Navigate To "Home" Page
    HomePage.Load
    HomePage.Verify Page Loaded

Navigate To "Auth form" Page
    [Arguments]  &{user_infos}
    Navigate To "Home" Page
    HomePage.Click On Auth Link Text
    FormAuthPage.Verify Page Loaded
    FormAuthPage.Authenticate User  &{user_infos}
    SecurePage.Verify Login Success  ${user_infos.message}

Logout User
    [Arguments]   &{user_infos}
    Navigate To "Home" Page
    HomePage.Click On Auth Link Text
    FormAuthPage.Authenticate User  &{user_infos}
    SecurePage.Verify Login Success  ${user_infos.message}
    SecurePage.Click On Logout Button
    FormAuthPage.Verify Logout Succes

Navigate To "ADD/Remove Element" Page
    HomePage.Load
    HomePage.Click On "Add/Remove Elements" Link
    AddRemoveElementPage.Verify Page Loaded
    AddRemoveElementPage.Click On Add Element Button
    AddRemoveElementPage.Click On Add Element Button
    AddRemoveElementPage.Verify Added Element  2
    AddRemoveElementPage.Remove ELement In List
    AddRemoveElementPage.Verify Added Element  2


