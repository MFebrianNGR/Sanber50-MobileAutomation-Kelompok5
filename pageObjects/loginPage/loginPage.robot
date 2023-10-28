*** Settings ***
Resource                ../baseApps.robot
Variables               loginpage-locator.yaml
Variables               ../homePage/homepage-locator.yaml
Variables               ../baseApps.robot

*** Keywords ***
Click Button Sign In
    Click Element                        ${signInButton}

Input Username Password Correct
    Wait Until Element Is Visible        ${username}
    Input Text                           ${username}        ${username_1}
    Input Password                       ${password}        ${password_1}

Input Wrong Username Correct Password
    Wait Until Element Is Visible        ${username}
    Input Text                           ${username}        ${username_2}
    Input Password                       ${password}        ${password_1}

Input Correct Username Wrong Password
    Wait Until Element Is Visible        ${username}
    Input Text                           ${username}        ${username_1}
    Input Password                       ${password}        ${password_2}

Input Wrong Username Wrong Password
    Wait Until Element Is Visible        ${username}
    Input Text                           ${username}        ${username_2}
    Input Password                       ${password}        ${password_2}

Input Blank Username Blank Password
    Wait Until Element Is Visible        ${username}

Click Button Login
    Click Element                        ${logInButton}

Verify Login Page
    Wait Until Element Is Visible        ${verifyLogin}

Verify Failed Login Page Username
    Wait Until Page Contains              ${invalidUsernamePassword}

Clear Username Password
    Clear Text                           ${username}
    Clear Text                           ${password}

Click Button Sign Out
    Wait Until Element Is Visible        ${signOutButton}
    Click Element                        ${signOutButton}

Verify Home Page
    Wait Until Element Is Visible        ${appLogo}
