*** Settings ***
Resource  ./PO/HomePage.robot
Resource  ./PO/FormAuthPage.robot
Resource  ./PO/SecurePage.robot
Resource  ./PO/AddRemoveElementPage.robot
Resource  ./PO/CheckBoxPage.robot
Resource  ./PO/ContextMenuPage.robot
Resource  ./PO/DragDropPage.robot
Resource  ./PO/DropDownPage.robot

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
    AddRemoveElementPage.Verify Added Element  1


Navigate To "Checkbox" Page
    HomePage.Load
    HomePage.Click On "Checkboxes" Link Text
    CheckBoxPage.Verify Page Loaded
    CheckBoxPage.Verify Second CheckBox Is Checked
    CheckBoxPage.Uncheck Checked CheckBox
    CheckBoxPage.Verify Second CheckBox Is Not Checked


Navigate To "Context Menu" Page
    HomePage.Load
    HomePage.Click on "Context Menu" Link Text
    ContextMenuPage.Verify Page Loaded
    ContextMenuPage.Move Mouse to Context Menu Zone
    ContextMenuPage.Right Click on Context Menu Zone
    ContextMenuPage.Verify Alert Showed


Navigate To "Drag and Drop" Page
    HomePage.Load
    HomePage.Click on "Drag and Drop" Link Text
    DragDropPage.Verify Page loaded
    DragDropPage.Move Box A To B
    DragDropPage.Verify Title Of BOx  A


Navigate To "DropDown" Page
    HomePage.Load
    HomePage.Click on "DropDown" Link Text
    DropDownPage.Verify Page Loaded
    DropDownPage.Verify Option "Please select an option" is Selected
    DropDownPage.Select Option
    DropDownPage.Verify Option Is Select