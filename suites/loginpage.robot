*** Settings ***
Resource                ../pageObjects/baseApps.robot
Resource                ../pageObjects/logInPage/logInPage.robot

*** Keywords ***
# Tujuan 1 : Melakukan Sign In pada Aplikasi Flight.Apk dengan Failed Login
## Step 1.1 : Membuka Aplikasi Flight
## Step 2.1 : Click button Sign In
## Step 3.1 : Masukkan username dan password yang salah
## Step 4.1 : Verifikasi menampilkan pop up invalid username password

# Tujuan 2 : Melakukan Sign In pada Aplikasi Flight.Apk dengan Success Login
## Step 1.2 : Membuka Aplikasi Flight
## Step 2.2 : Click button Sign In
## Step 3.2 : Masukkan username dan password
## Step 4.2 : Verifikasi menampilkan halaman login
## Step 5.2 : Click button Sign Out
## Step 6.2 : Verifikasi menampilkan halaman homepage
## Step 7.2 : Tutup Aplikasi Flight

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

Unsuccessfully Login With Wrong Username And Wrong Password
    Clear Username Password
    Input Wrong Username Wrong Password
    Verify Failed Login Page Username

Unsuccessfully Login With Blank Username And Blank Password
    Clear Username Password
    Input Blank Username Blank Password
    Verify Failed Login Page Username

Successfully Login Flight Apps
    Clear Username Password
    Input Username Password Correct
    Verify Login Page
    Click Button Sign Out
    Verify Home Page
    Close Flight Application
