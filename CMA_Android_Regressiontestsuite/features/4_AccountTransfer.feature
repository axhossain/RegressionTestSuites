#Feature: Account Transfers
#
#  Background: This step will be executed before each scenario
#    Given that I am logged out of the application
#
#  @5687
#  Scenario Outline: :  Transaction Status
#    When  I attempt a full login by entering "<User ID>", "<Password>" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "From"
#    Then  I touch the text "Checking"
#    Then  I touch the text "To"
#    Then  I touch the text "Savings"
#    And   I touch the text "Amount"
#    And   I touch the key on the soft keyboard "8"
#    And   I touch the key on the soft keyboard "66"
#    And   I touch the button "Transfer"
#    And   I touch the button "Yes"
#    Then  message displayed on the screen "<Pop Up Message>"
#    And   I take a screenshot of the "<Screenshot Name>"
#    Then  I touch the button "OK"
#
#  Examples: login parameters
#    | User ID       | Password | Pop Up Message                                                                  | Screenshot Name     |
#    | autotransrc1  | 11111    | We are unable to display your information at this time. Please try again later. | autotransrc1_error  |
#    | autotransrc2  | 11111    | We are unable to display your information at this time. Please try again later. | autotransrc2_error  |
#    | autotransrc3  | 11111    | Invalid PIN                                                                     | autotransrc3_error  |
#    | autotransrc5  | 11111    | Invalid passcode for lucky transfer                                             | autotransrc5_error  |
#    | autotransrc8  | 11111    | We are unable to display your information at this time. Please try again later. | autotransrc8_error  |
#    | autotransrc9  | 11111    | We are unable to display your information at this time. Please try again later. | autotransrc9_error  |
#    | autotransrc16 | 11111    | Overlimit/NSF/Insufficient funds                                                | autotransrc16_error |
#    | autotransrc17 | 11111    | We are unable to display your information at this time. Please try again later. | autotransrc17_error |
#    | autotransrc25 | 11111    | Invalid accounts combination                                                    | autotransrc25_error |
#    | autotransrc50 | 11111    | We are unable to display your information at this time. Please try again later. | autotransrc50_error |
#    | autotransrc90 | 11111    | We are unable to display your information at this time. Please try again later. | autotransrc90_error |
#    | autotransrc99 | 11111    | We are unable to display your information at this time. Please try again later. | autotransrc99_error |
#
#  @5687
#  Scenario Outline: Loan, DOT, Joint Transfer & Credit Card Accounts
#    Then  I attempt a full login by entering "<User ID>", "<Password>" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "From"
#    Then  I touch the text "<From Acct>"
#    Then  I touch the text "To"
#    Then  I touch the text "<To Acct>"
#    Then  transfer details From should display "<From Details1>" and "<From Details2>" and "<From Details3>"
#    Then  transfer details To should display "<To Details1>" and "<To Details2>" and "<To Details3>"
#    And   I edit the amount field in the "Transfers" screen
#    And   I touch the key on the soft keyboard "8"
#    And   I touch the key on the soft keyboard "66"
#    And   I touch the button "Transfer"
#    Then  I check for prompt with heading "Everything correct?" message "" buttons "Yes" "No"
#    And   I touch the button "Yes"
#    Then  message displayed on the screen "Success!"
#
#  Examples: login parameters
#    | User ID     | Password | From Acct                            | To Acct                          | To Details1                          | To Details2               | To Details3 | From Details1     | From Details2 | From Details3 |
#    #Loan Account
#    | cmaauto005  | 11111    | Primary Checking                     | Line of Credit                   | Line of Credit                       | Due Jun 1                 | -$200.00    |                   |               |               |
#    | cmaauto005  | 11111    | Primary Checking                     | Installment Loan                 | Installment Loan                     | Due May 15                | $100.00     |                   |               |               |
#    | cmaauto005  | 11111    | Primary Checking                     | Consumer Loan                    | Consumer Loan                        |                           | -$200.00    |                   |               |               |
#    | cmaauto005  | 11111    | Primary Checking                     | Commercial Loan                  | Commercial Loan                      |                           | $0.00       |                   |               |               |
#    #DOT Account
#    | cmaauto005  | 11111    | Dot Checking Acct                    | Primary Checking                 |                                      |                           |             | Dot Checking Acct |               | $123.45       |
#    | cmaauto005  | 11111    | Primary Checking                     | Dot Checking Acct                | Dot Checking Acct                    |                           | $123.45     |                   |               |               |
#    #Joint Account
#    | cmaautosort | 11111    | Joint Certificate of Deposit Account | Checking Joint                   | Joint Certificate of Deposit Account | Joe Black                 | $500.00     | Checking Joint    | John Doe      | $204.00       |
#    #Credit Card Account
#    | cmaauto003  | 11111    | Checking Account                     | Credit Card                      | Credit card                          | min due $35.00 of $258.52 | $12,345.67  |                   |               |               |
#    | cmaauto003  | 11111    | Checking Account                     | Credit card Pmt Unavailable      | Credit card Pmt Unavailable          | statement bal $258.52     | $12,345.67  |                   |               |               |
#    | cmaauto003  | 11111    | Checking Account                     | Credit card Due Date Unavailable | Credit card Due Date Unavailable     | min due $35.00 of $258.52 | $12,345.67  |                   |               |               |
#    | cmaauto003  | 11111    | Checking Account                     | Credit card StmtBal Unavailable  | Credit card StmtBal Unavailable      | min due $35.00            | $12,345.67  |                   |               |               |
#
#  @5687
#  Scenario: Loan Account Credit Card
#    Then  I attempt a full login by entering "cmaauto005", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "From"
#    Then  I touch the text "Primary Checking"
#    Then  I touch the text "To"
#    Then  I touch the text "Credit Card"
#    Then  transfer details To should display "Credit Card " and "" and "-$200.00"
#    And   I edit the amount field in the "Transfers" screen
#    And   I touch the key on the soft keyboard "8"
#    And   I touch the key on the soft keyboard "66"
#    And   I touch the button "Transfer"
#    Then  I check for prompt with heading "Everything correct?" message "" buttons "Yes" "No"
#    And   I touch the button "Yes"
#    Then  message displayed on the screen "Success!"
#
#  @5687
#  Scenario: Transfer confirmation popup verification
#    Then  I attempt a full login by entering "cmaauto003", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "From"
#    Then  I touch the text "Checking Account"
#    Then  I touch the text "To"
#    Then  I touch the text "0 Balance Acct"
#    And   I touch the text "Amount"
#    And   I edit the amount field in the "Transfers" screen
#    And   I touch the key on the soft keyboard "8"
#    And   I touch the key on the soft keyboard "66"
#    And   I take a screenshot of the "Transfer_Money_screen"
#    And   I touch the button "Transfer"
#    Then  I check for prompt with heading "Everything correct?" message one "From:", "Checking Account", "01" message two "To:", "0 Balance Acct", "06" message three "Amount:", "0.01" buttons "Yes" "No"
#    And   I touch the button "Yes"
#    Then  message displayed on the screen "Success!"
#
#  @5687
#  Scenario: Button interaction
#    Then  I attempt a full login by entering "cmaauto003", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the button "Transfer"
#    Then  message displayed on the screen "Transfer from:"
#    Then  button displayed on the screen "Cancel"
#    Then  I touch the text "Checking Account"
#    Then  I touch the button "Transfer"
#    Then  message displayed on the screen "Transfer to:"
#    Then  button displayed on the screen "Cancel"
#    Then  I touch the text "0 Balance Acct"
#    Then  I touch the button "Transfer"
#    And   I touch the key on the soft keyboard "8"
#    And   I touch the key on the soft keyboard "66"
#    Then  I touch the button "Transfer"
#    Then  I check for prompt with heading "Everything correct?" message one "From:", "Checking Account", "01" message two "To:", "0 Balance Acct", "06" message three "Amount:", "0.01" buttons "Yes" "No"
#    And   I touch the button "Yes"
#    Then  message displayed on the screen "Success!"
#    Then  I navigate "back"
#    Then  message displayed on the screen "Accounts"
#    When  I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "Amount"
#    And   I touch the key on the soft keyboard "8"
#    And   I touch the key on the soft keyboard "66"
#    Then  I touch the button "Transfer"
#    Then  message displayed on the screen "Transfer from:"
#    Then  button displayed on the screen "Cancel"
#    Then  I touch the text "Checking Account"
#    Then  I touch the button "Transfer"
#    Then  message displayed on the screen "Transfer to:"
#    Then  button displayed on the screen "Cancel"
#    Then  I touch the text "0 Balance Acct"
#    When  I select "Accounts" from menu
#    Then  message displayed on the screen "Accounts"
#    When  I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "To"
#    Then  message displayed on the screen "Transfer to:"
#    Then  button displayed on the screen "Cancel"
#    Then  I touch the text "0 Balance Acct"
#    Then  I touch the button "Transfer"
#    Then  message displayed on the screen "Transfer from:"
#    Then  button displayed on the screen "Cancel"
#    Then  I touch the text "Checking Account"
#    Then  I touch the button "Transfer"
#    And   I touch the key on the soft keyboard "8"
#    And   I touch the key on the soft keyboard "66"
#    Then  I navigate "back"
#
#  @5687
#  Scenario: Transfer From with available balance & To without available balance
#    Then  I attempt a full login by entering "cmaauto003", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "From"
#    Then  I touch the text "More Available Balance Account"
#    Then  I touch the text "To"
#    Then  I touch the text "No Available balance Account"
#    Then  transfer details From should display "More Available Balance Account" and "" and "$7,500.00"
#    Then  transfer details To should display "No Available balance Account" and "" and "$5,100.00"
#
#  @5687
#  Scenario: Account Nickname
#    Then  I attempt a full login by entering "cmaauto003", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "To"
#    Then  I touch the text "Nickname Account"
#    Then  transfer details To should display "Nickname Account" and "" and "-$1,500.00"
#
#  @5687
#  Scenario: Single account transfer rejection
#    Then  I attempt a full login by entering "cmaauto003", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I pick same "From" and "To" accounts and take screen shot
#    And   I touch the text "Amount"
#    And   I edit the amount field in the "Transfers" screen
#    And   I touch the key on the soft keyboard "8"
#    And   I touch the key on the soft keyboard "66"
#    And   I take a screenshot of the "Transfer_Money_screen"
#    And   I touch the button "Transfer"
#    Then  I check for prompt with heading "Information" message "Transfer cannot be made between the same account" buttons "OK" ""
#    Then  I take a screenshot of the "transfer_rejection_prompt"
#    And   I touch the button "OK"
#
#  @5687
#  Scenario: Restricted & Invalid Accounts
#    Then  I attempt a full login by entering "cmaauto004", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "From"
#    Then  message displayed on the screen "Transfer from:"
#    Then  message displayed on the screen "Exclude TO"
#    Then  message not displayed on the screen "Exclude Both"
#    Then  I touch the text "Cancel"
#    Then  I touch the text "To"
#    Then  message displayed on the screen "Transfer to:"
#    Then  message displayed on the screen "Exclude FROM"
#    Then  message not displayed on the screen "Exclude Both"
#    Then  I touch the text "Cancel"
#
#  @5687
#  Scenario: Cross Member Linked Accounts
#    Then  I attempt a full login by entering "cmaauto002", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "From"
#    Then  message displayed on the screen "Transfer from:"
#    Then  message not displayed on the screen "CrossUser"
#    Then  I touch the text "Checking Account"
#    Then  I touch the text "To"
#    Then  message displayed on the screen "Transfer to:"
#    Then  message displayed on the screen "CrossUser Checking"
#    Then  I touch the text "CrossUser Checking"
#    Then  transfer details To should display "CrossUser Checking" and "Linked" and ""
#    And   I touch the text "Amount"
#    And   I edit the amount field in the "Transfers" screen
#    And   I touch the key on the soft keyboard "8"
#    And   I touch the key on the soft keyboard "66"
#    And   I touch the button "Transfer"
#    Then  I check for prompt with heading "Everything correct?" message "" buttons "Yes" "No"
#    And   I touch the button "Yes"
#    Then  message displayed on the screen "Success!"
#
#  @5687
#  Scenario: Exceed Account Balance
#    Then  I attempt a full login by entering "cmaauto003", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I pick "From" and "To" accounts and take screen shot
#    And   I touch the text "Amount"
#    And   I edit the amount field in the "Transfers" screen
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "66"
#    And   I take a screenshot of the "Transfer_Money_screen"
#    And   I touch the button "Transfer"
#    Then  message displayed on the screen "The maximum payment amount is"
#    Then  message displayed on the screen "Please enter a different amount"
#    And   button displayed on the screen "OK"
#    And   I take a screenshot of the "Transfer_Information_screen"
#    And   I touch the button "OK"
#
#  @5687
#  Scenario: Max transfer limit
#    Then  I attempt a full login by entering "cmaauto004", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  I touch the text "From"
#    Then  I touch the text "Good Acct"
#    Then  I touch the text "To"
#    Then  I touch the text "Exclude FROM"
#    And   I edit the amount field in the "Transfers" screen
#    And   I touch the key on the soft keyboard "8"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "7"
#    And   I touch the key on the soft keyboard "66"
#    And   I take a screenshot of the "Transfer_Money_screen"
#    Then  I touch the button "Transfer"
#    Then  message displayed on the screen "10,000,000.00"
#    And   I touch the button "No"
#    And   I edit the amount field in the "Transfers" screen
#    And   I touch the key on the soft keyboard "67"
#    And   I touch the key on the soft keyboard "67"
#    And   I touch the key on the soft keyboard "67"
#    And   I touch the key on the soft keyboard "67"
#    And   I touch the key on the soft keyboard "67"
#    And   I touch the key on the soft keyboard "67"
#    And   I touch the key on the soft keyboard "67"
#    And   I touch the key on the soft keyboard "67"
#    And   I touch the key on the soft keyboard "67"
#    And   I touch the key on the soft keyboard "67"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "16"
#    And   I touch the key on the soft keyboard "66"
#    And   I take a screenshot of the "Transfer_Money_screen"
#    Then  I touch the button "Transfer"
#    Then  message displayed on the screen "99,999,999.99"
#    And   I touch the button "Yes"
#    Then  message displayed on the screen "Success!"
#
#  @5687
#  Scenario: Inactive Account
#    Then  I attempt a full login by entering "autonoaccount", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "No accounts available"
#    And   I take a screenshot of the "Transfer_screen"
#
#  @5687
#  Scenario: Session Timeout
#    Then  I attempt a full login by entering "cmaauto003", "11111" and take a screen shot
#    Then  message displayed on the screen "Accounts"
#    And   I wait "2" seconds
#    And   I select "Transfers" from menu
#    Then  message displayed on the screen "Transfer Money"
#    Then  session timeout expires and displays message "Session Timeout"
#    Then  I check for prompt with heading "Session Timeout" message "You have been logged off due to inactivity" buttons "OK" ""
#    And   I take a screenshot of the "Timeout_prompt"
#    Then  I touch the button "OK"
#    And   button displayed on the screen "Log in"
#    And   I take a screenshot of the "Login_screen"