*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Test Case
    Open Browser  about:blank  Chrome
    Maximize Browser Window

End Test Case
    Close All Browsers