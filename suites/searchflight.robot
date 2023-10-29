*** Settings ***
Resource                ../pageObjects/baseApps.robot
Resource                ../pageObjects/Search/search.robot
Variables               ../pageObjects/Search/search.yaml

** Keywords
# 1. Membuka Flight Application
# 2. Melakukan Sign in
# 3. Menekan button search
# 4. Input Flight number
# 5. Klik Search
# 6. Menampilkan flight number
# 7. Menutup Flight Application

** Test Cases **
Successfully Login
    Open Flight Application
    Click Button Sign In
    Input Correct Username Wrong Password
    Click Button Login

Click Search Button
    Click Button Search

Searching Flight Number ID
    Search Booking Flight Number
    Click Search Button

Close Application
    Close Flight Application
