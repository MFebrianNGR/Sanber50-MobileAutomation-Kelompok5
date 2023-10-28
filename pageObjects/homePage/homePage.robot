*** Settings ***
Resource                ../baseApps.robot
Variables               homepage-locator.yaml

*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible    ${appLogo}
    Wait Until Element Is Visible    ${signInButton}
    Wait Until Element Is Visible    ${searchButton}
    Wait Until Element Is Visible    ${checkinButton}
Verify User Success to login
    Wait Until Element Is Visible      ${username_homepage}

