*** Settings ***
Resource            ../pageObjects/homePage/homePage.robot

*** Keywords ***
# Tujuan : Melakukan verifikasi jika aplikasi flight terbuka dan menampilkan halaman homepage
## Step 1 : Membuka Aplikasi Flight
## Step 2 : Verifikasi jika aplikasi berhasil terbuka
## Step 3 : Verifikasi tombol Sign In di Homepage
## Step 4 : Tutup Aplikasi

*** Test Cases ***
Successfully Open Flight Home Page
    Open Flight Application
    Verify Homepage Appears
    Verify Text Homepage
    Close Flight Application
