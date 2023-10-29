*** Settings ***
Resource                ../pageObjects/baseApps.robot
Variables               search.yaml
Variables               ../loginpage-locator.yaml
Variables               ../homePage/homepage-locator.yaml
Variables               ../pageObjects/baseApps.robot

** Keywords **
Click Button Sign In
    Click Element                        ${signInButton}

Input Username Password Correct
    Wait Until Element Is Visible        ${username}
    Input Text                           ${username}        ${username_1}
    Input Password                       ${password}        ${password_1}

Click Button Search
    Click Element                        ${buttonSearchPage}

Search Booking Flight Number
    Wait Until Element Is Visible        ${searchField}
    Input Booking Flight ID              ${searchField}      ${validbooking}
    Click Search Button                  ${buttonSearch}