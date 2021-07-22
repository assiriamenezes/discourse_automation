*** Settings ***
Library            Selenium2Library
Resource           ../resources/resourceBDD.robot
Suite Teardown     Close Browser

***Keywords***
### GIVEN
The user is in 'Demo' page 
    Open Browser      ${URL}          ${BROWSER} 
    Maximize Browser Window


###AND
The user click in the 'Demo' button in header page
    Click Element   ${DEMO_BUTTON}  

The 'Demo page' is visible
    Switch Window    Demo
    
###WHEN
The user scroll the page to the end
    
    Execute Javascript    window.scrollBy(0,3000);
    Sleep  2s           #Pause for loading the page to appears more topics
    Execute Javascript    window.scrollBy(0,3000);

###THEN
The 'title' should be print in console
    Log to Console         \n
    Log to Console         ***********************************************
    Log to Console         ************** Results in Console: ************ 
    Log to Console         ***********************************************
    Log to Console         \n
    Log To Console         //*[@id="ember129"]