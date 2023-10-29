*** Settings ***
Library            AppiumLibrary

*** Variables ***
${REMOTE_URL}               http://127.0.0.1:4723/wd/hub    
${PLATFORM_NAME}            Android
${PLATFORM_VERSION}         11.0
${username_1}               support@ngendigital.com
${password_1}               abc123
${username_2}               !@support@ngendigital.com
${password_2}               bcd123
${validbooking}             DA935


*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL}
    ...                     platformName=${PLATFORM_NAME}
    ...                     platformVersion=${PLATFORM_VERSION}
    ...                     deviceName=426a645d
    ...                     appPackage=com.example.myapplication
    ...                     appActivity=com.example.myapplication.MainActivity
Close Flight Application
    Close Application
