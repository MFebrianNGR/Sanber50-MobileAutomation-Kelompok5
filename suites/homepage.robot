*** Settings ***
Resource            ../pageObjects/homePage/homePage.robot

*** Keywords ***
# Tujuan : Melakukan verifikasi jika aplikasi flight terbuka dan menampilkan halaman homepage
## Step 1 : Membuka Aplikasi Flight
## Step 2 : Verifikasi jika applikasi berhasil terbuka
## Step 3 : Tutup Aplikasi

*** Test Cases ***
Successfully Open Flight Home Page
    Open Flight Application
    Verify Homepage Appears
    Close Flight Application
