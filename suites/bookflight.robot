*** Settings ***
Resource                ../pageObjects/baseApps.robot

** Keywords
# 1. Membuka Flight Application
# 2. Melakukan Sign in
# 3. Menekan button Book
# 4. Pilih penerbangan bolak balik
# 5. Pilih Terbang kota asal 
# 6. Pilih Terbang kota tujuan
# 7. Pilih Class 
# 8. Pilih Tanggal berangkat
# 9. Pilih Tanggal pulang
# 10. Pilih Opsi Penerbangan
# 11. Menekan button Book
# 12. Pilih harga tiket
# 13. Menekan button Confirm

** Test Cases **
Booking Flight
    Open Flight Application
    Click Button Sign In
    Input Username Password Correct
    Click Button Login
    Verify Login Page
    Click Button Book
    Choose round trip
    Choose From City
    Choose To City
    Choose Class
    Choose Start Date
    Choose End Date
    Choose Flight
    Click Button Book
    Choose Booking price
    Click Button Confirm

