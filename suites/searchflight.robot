*** Settings ***
Resource                ../pageObjects/baseApps.robot
Resource                ../pageObjects/Search/search.robot

** Keywords
# 1. Membuka Flight Application
# 2. Melakukan Sign in
# 3. Menekan button search
# 4. Input Flight number
# 5. Klik Search
# 6. Menampilkan flight number
# 7. Menutup Flight Application

** Test Cases **
Successfully Login Flight Apps
    Open Flight Application
    Click Button Sign In
    Input Username Password Correct
    Click Button Login
    Verify Login Page

Appear Searching Page
    Click Button Search

Searching Flight Number ID
    Search Booking Flight Number

