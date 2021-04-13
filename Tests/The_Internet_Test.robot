*** Settings ***
Resource  ../Resources/TheInternetApp.robot
Resource  ../Resources/Common.robot

Test Setup  Common.Begin Test Case
Test Teardown  Common.End Test Case

*** Variables ***
${HOME_PAGE_URL}=  https://the-internet.herokuapp.com/
&{VALID_USER}=  username=tomsmith  password=SuperSecretPassword!  message=You logged into a secure area!
&{INVALID_USER}=  username=admin  password=admin!  message=Your username is invalid!

*** Test Cases ***
Should Open "Home" Page
    TheInternetApp.Navigate To "Home" Page
Should Authenticate User on "Login" Page
    [tags]  login
    [Template]   TheInternetApp.Navigate To "Auth form" Page
    &{VALID_USER}
    &{INVALID_USER}

Should Logout From "Secure" Page
    [Tags]  logout
    TheInternetApp.Logout User   &{VALID_USER}

Should Add Remove Element on "Add/Remove Element" Page
    [Tags]  add_remove
    TheInternetApp.Navigate To "ADD/Remove Element" Page

Should Check And Uncheck on "CheckBox" Page
    [Tags]  checkboxes
    TheInternetApp.Navigate To "Checkbox" Page

Should Right Click On "Context Menu" Page
    [Tags]  contextmenu
    TheInternetApp.Navigate To "Context Menu" Page

Should Be DragDrop Element on "Drag and Drop" Page
    [Tags]  dragdrop
    TheInternetApp.Navigate To "Drag and Drop" Page

Should Select on "DropDown" Page
    [Tags]  dropdown
    TheInternetApp.Navigate To "DropDown" Page

Should Remove dynamic contols on "Dynamics Controls" Page
    [Tags]  dynamiccontrols
    TheInternetApp.Remove Element On "Dynamics Controle" Page

Should Add dynamic contols on "Dynamics Controls" Page
    [Tags]  dynamiccontrols
    TheInternetApp.Add Element On "Dynamics Controle" Page

Should able To Load Dynamic Element On "Dynamic Loading" Page
    [Tags]  dynamicloading
    TheInternetApp.Navigate to "Dynamic Loading" Page