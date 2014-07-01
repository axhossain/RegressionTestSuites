Feature: Account Summary

  Background: This step will be executed before each scenario
    Given that I am logged out of the application

  @5687
  Scenario Outline: Account Details status
    Then  I attempt a full login by entering "<User ID>", "<Password>" and take a screen shot
    Then  message displayed on the screen "<Pop Up Message>"
    And   I take a screenshot of the "<Screenshot Name>"
    Then  I touch the button "OK"

  Examples: login parameters
    | User ID         | Password | Pop Up Message                                                                  | Screenshot Name       |
    | autoactsumrc1   | 11111    | We are unable to display your information at this time. Please try again later. | autoactsumrc1_error   |
    | autoactsumrc2   | 11111    | We are unable to display your information at this time. Please try again later. | autoactsumrc2_error   |
    | autoactsumrc3   | 11111    | Invalid PIN                                                                     | autoactsumrc3_error   |
    | autoactsumrc4   | 11111    | We are unable to display your information at this time. Please try again later. | autoactsumrc4_error   |
    | autoactsumrc9   | 11111    | We are unable to display your information at this time. Please try again later. | autoactsumrc9_error   |
    | autoactsumrc50  | 11111    | We are unable to display your information at this time. Please try again later. | autoactsumrc50_error  |
    | autoactsumrc90  | 11111    | We are unable to display your information at this time. Please try again later. | autoactsumrc90_error  |
    | autoactsumrc99  | 11111    | We are unable to display your information at this time. Please try again later. | autoactsumrc99_error  |
    | autoactsumdelay | 11111    | We are unable to display your information at this time. Please try again later. | autoactsumdelay_error |

  @5687
  Scenario: Joint & Saving Account Only
    Then  I attempt a full login by entering "cmaauto002", "11111" and take a screen shot
    Then  message displayed on the screen "Checking Account"
    Then  message displayed on the screen "Joint Savings Account"
    Then  message not displayed on the screen "Cross User"
    Then  I take a screenshot of the "Accounts_Summary_screen"

  @5687
  Scenario: Account Nicknames From Host & Database
    Then  I attempt a full login by entering "autonickname1", "11111" and take a screen shot
    Then  message displayed on the screen "Host nickname Savings"
    Then message displayed on the screen "No nickname"
    Then message displayed on the screen "Test nickname"
    Then  I take a screenshot of the "Accounts_screen"