#Feature: CIS Login
#
#  Background: This step will be executed before each scenario
#    Given that I am logged out of the application
#
#  @5687
#  Scenario: Application reinstall without MFA
#    Then I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then message displayed on the screen "Accounts"
#    And  that I am logged out of the application
#    Then message displayed on the screen "Save Member Number"
#    Then I reinstall the application
#    Then I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then message displayed on the screen "Accounts"
#    And  that I am logged out of the application
#    Then message displayed on the screen "Save Member Number"
#
#  @9901
#  Scenario: Application reinstall with MFA
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    And   I touch the button "Text me"
#    Then  message displayed on the screen "We texted you at"
#    And   message displayed on the screen "Success!"
#    Then  I touch the button "Go to my accounts"
#    Then  message displayed on the screen "Accounts"
#    And   that I am logged out of the application
#    Then message displayed on the screen "Save Member Number"
#    Then I reinstall the application
#    Then I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And  that I am logged out of the application
#    Then message displayed on the screen "Save Member Number"
#
#  @9901
#  Scenario: User With MFA Remember Device Disabled
#    Then  I toggle save member number switch
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    And   I touch the button "Text me"
#    Then  message displayed on the screen "We texted you at"
#    And   message displayed on the screen "Success!"
#    And   button displayed on the screen "Go to my accounts"
#    When  I touch the button "Go to my accounts"
#    Then  message displayed on the screen "Accounts"
#    Then  I wait "2" seconds
#    And   I select "More" from menu
#    Then  I toggle remember this device switch
#    And   that I am logged out of the application
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then  message displayed on the screen "Secure Login"
#
#  @5678
#  Scenario: User Without MFA Remember Device Disabled
#    Then  I toggle save member number switch
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    Then  I wait "2" seconds
#    And   I select "More" from menu
#    Then  I toggle remember this device switch
#    And   that I am logged out of the application
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then  message not displayed on the screen "Secure Login"
#    And   message displayed on the screen "Accounts"
#
#  @9901
#  Scenario: MFA Bypassed After Re-login
#    Then  I toggle save member number switch
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    And   I touch the button "Text me"
#    Then  message displayed on the screen "We texted you at"
#    And   message displayed on the screen "Success!"
#    And   button displayed on the screen "Go to my accounts"
#    When  I touch the button "Go to my accounts"
#    Then  message displayed on the screen "Accounts"
#    Then  I wait "2" seconds
#    And   I select "More" from menu
#    Then  I toggle remember this device switch
#    And   that I am logged out of the application
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#
#  @5687
#  Scenario: No MFA After Re-login
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   that I am logged out of the application
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then  message not displayed on the screen "Secure Login"
#    And   message displayed on the screen "Accounts"
#
#  @5687
#  Scenario: User Without MFA
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then  message not displayed on the screen "We need to confirm your identity"
#    And   message displayed on the screen "Accounts"
#
#  @9901
#  Scenario: Invalid Login User with MFA
#    Then  I attempt a full login by entering "cmaauto001", "12345" and take a screen shot
#    Then  message displayed on the screen "Please enter valid login credentials"
#    Then  I touch the button "OK"
#
#  @5687
#  Scenario: Invalid Login User without MFA
#    Then  I attempt a full login by entering "cmaauto001", "12345" and take a screen shot
#    Then  message displayed on the screen "Please enter valid login credentials"
#    Then  I touch the button "OK"
#
#  @5687
#  Scenario: Force Stop App
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    Then  I force the application to stop for FI "5687"
#    Then  I restart the test server
#    Then  message displayed on the screen "Save Member Number"
#
#  @9901
#  Scenario: Force Stop App
#    Then  I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    Then  I force the application to stop for FI "9901"
#    Then  I restart the test server
#    Then  message displayed on the screen "Save Member Number"
#
#  @0516
#  Scenario: Login using USP enabled FI
#    Then  I attempt a full login by entering "mobiletest01", "test123" and take a screen shot
#    And   I touch the button "Text me"
#    Then  message displayed on the screen "We texted you at"
#    And   message displayed on the screen "Success!"
#    Then  I touch the button "Go to my accounts"
#    Then  message displayed on the screen "Accounts"
#    And   that I am logged out of the application
#    Then message displayed on the screen "Save User ID"
#
#  @0516
#  Scenario: Force Stop App
#    Then  I attempt a full login by entering "mobiletest01", "test123" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    Then  I force the application to stop for FI "0516"
#    Then  I restart the test server
#    Then  message displayed on the screen "Save User ID"
