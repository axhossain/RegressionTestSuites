#Feature: Login
#
#  Background: This step will be executed before each scenario
#    Given that I am logged out of the application
#
#  @9901
#  Scenario: Tab bar exit and entry points
#    Then message displayed on the screen "Sign up"
#    Then I touch the text "More"
#    Then message displayed on the screen "We are here to help:"
#    Then I touch the text "Log In"
#    Then message displayed on the screen "Sign up"
#
#  @9901
#  Scenario Outline: User status
#    Then  I attempt a full login by entering "<User ID>", "<Password>" and take a screen shot
#    Then  message displayed on the screen "<Pop Up Message>"
#    And   I take a screenshot of the "<Screenshot Name>"
#    Then  I touch the button "OK"
#
#  Examples: login parameters
#    | User ID       | Password | Pop Up Message                                                                         | Screenshot Name             |
#    | cmastatminus2 | 11111    | Registration is pending. Please log into online banking to complete registration.      | Registration_Pending        |
#    | cmastat2      | 11111    | Account setup is pending. Please log into online banking to complete setup.            | Account_Setup_Pending       |
#    | cmastat4      | 11111    | Account is on hold. Please contact us to resolve.                                      | Account_On_Hold             |
#    | cmastat8      | 11111    | Account is having issues. Please contact us to resolve.                                | Account_Having_Issues       |
#    | cmastat128    | 11111    | Disclosure needs to be accepted. Please log into online banking to accept disclosure.  | Disclosure_Needs_Acceptance |
#    | cmastat2048   | 11111    | Disclosure needs to be accepted. Please log into online banking to accept disclosure.  | Disclosure_Needs_Acceptance |
#    | cmastat16384  | 11111    | Approval for account access is still in process. Please try again later or contact us. | Approval_Still_In_Process   |
#    | cmastat32768  | 11111    | Please reset password in online banking or contact us to resolve.                      | Reset_Password              |
#    #| cmapwexpire   | 11111    | Password has expired. Please reset password in online banking or contact us to resolve.| Expired_Password            |
#    #| cmanullpw01   | 11111    | Internal System Error.                                                                 | System_Error                |
#    | cmalockeduser | 11111    | Login credentials are locked out. Please contact us to resolve.                        | Locked_Out                  |
#    | cmaauto001    | 1111     | Please enter valid login credentials.                                                  | Invalid_Password            |
#    | 0cma12        | 11111    | Please enter valid login credentials.                                                  | Invalid_Leading_Zero        |
#
#  @9901
#    Scenario Outline: :  Special credentials
#    Then  I toggle save member number switch
#    And   login with special credentials "<Credential Name>"
#    And   that I am logged out of the application
#    Then  "Member Number" field's "text" property value should be "masked"
#    Then  I take a screenshot of the "<Credential Name>"
#    Then  I toggle save member number switch
#
#  Scenarios:
#    |Credential Name|
#    |leading_zero|
#    |spl_password|
#    |spl_username|
#
#  @9901
#  Scenario: Member Number Persistence OFF
#    Given I attempt a full login by entering "cmaauto001", "11111" and take a screen shot
#    And   that I am logged out of the application
#    Then  "Member Number" field's "text" property value should be ""
#    And   I scan "Login_screen_with_no_persistence" and take screen shot