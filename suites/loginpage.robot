*** Settings ***
Resource                ../pageObjects/baseApps.robot
Resource                ../pageObjects/logInPage/logInPage.robot

*** Keywords ***
# Tujuan : Melakukan Sign In pada Aplikasi Flight
## Step 1 : Membuka Aplikasi Flight
## Step 2 : Click button Sign In
## Step 3 : Masukkan username dan password
## Step 4 : Verifikasi menampilkan halaman login
## Step 5 : Click button Sign Out
## Step 6 : Verifikasi menampilkan halaman homepage
## Step 7 : Tutup Aplikasi Flight

*** Test Cases ***
Unsuccessfully Login With Wrong Username And Correct Password
    Open Flight Application
    Click Button Sign In
    Input Wrong Username Correct Password
    Verify Failed Login Page Username

Unsuccessfully Login With Correct Username And Wrong Password
    Clear Username Password
    Input Correct Username Wrong Password
    Verify Failed Login Page Username

Successfully Login Flight Apps
    Clear Username Password
    Input Username Password Correct
    Verify Login Page
    Click Button Sign Out
    Verify Home Page
    Close Flight Application
