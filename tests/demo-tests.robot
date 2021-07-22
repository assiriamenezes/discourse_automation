****Settings***
Resource            ../resources/bdd.robot
Resource            ../resources/keywords.robot
Resource            ../resources/resourceBDD.robot
Suite Teardown      Close Browser



***Test Cases***
Scenario 1: Open the Demo page
    Given the user is in 'Demo' page
    And the user click in the 'Demo' button in header page
    Sleep  2s
    And the 'Demo page' is visible
    When the user scroll the page to the end
    When the 'title'should be print in console