*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Start From Zero

*** Test Cases ***
When value is written and button pressed twice the counter is our value
    Go To  ${HOME_URL}
    Input Text  name=value  218
    Click Button  Aseta
    Page Should Contain  nappia painettu 218 kertaa

