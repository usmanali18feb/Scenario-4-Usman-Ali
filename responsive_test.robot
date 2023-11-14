*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome

*** Test Cases ***
Mobile_Responsive_Test
    Open Browser    https://derivfe.github.io/qa-test/settings    ${BROWSER}
    Maximize Browser Window
    Set Window Size    360    640    # Set the viewport size to simulate a mobile device
    Capture Page Screenshot    Before Responsive Test
    Wait Until Page Contains Element    css:#update-profile-form    timeout=10s       
    Capture Page Screenshot    After Responsive Test
    # Add assertions or verifications for any responsive issues
    Element Should Be Visible    css:#update-profile-form
    Close Browser

