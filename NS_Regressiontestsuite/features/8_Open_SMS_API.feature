Feature: Open SMS API

  Background:
    * connect to the server

  @mbl_fsg  @sms_protocol
  Scenario: Create short open SMS and send to specified destination ID

    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * get destination
    * read destination id
    * send "test sms message" open SMS message to destination ID retrieved in previous step
    * validate response code "201" and response message "Created"
    * retrieve SMS messages to "SMS.txt" and check if file contains "test sms message"

  @mbl_fsg  @sms_protocol
  Scenario: Create short open SMS message and send it to specified phone number
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * send "test sms message" open SMS message
    * validate response code "201" and response message "Created"
    * retrieve SMS messages to "SMS.txt" and check if file contains "test sms message"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with 150 characters (First message should contains 130 characters and the second message should contains remaining characters)
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * send "111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555" open SMS message
    * validate response code "201" and response message "Created"
    * retrieve SMS messages to "SMS.txt" and check if file contains "1111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "44444444445555555555"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with 300 characters (The first message should contains 130 characters, the second characters should contain 147 characters and the third message should contains remaining characters)
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * send "111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000" open SMS message
    * validate response code "201" and response message "Created"
    * retrieve SMS messages to "SMS.txt" and check if file contains "1111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888"
    * retrieve SMS messages to "SMS.txt" and check if file contains "88899999999990000000000"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with 300 characters (The first message should contains 130 characters, the second message should contain 147 characters and the third message should contains remaining characters)
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * send "111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000" open SMS message
    * validate response code "201" and response message "Created"
    * retrieve SMS messages to "SMS.txt" and check if file contains "1111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888"
    * retrieve SMS messages to "SMS.txt" and check if file contains "88899999999990000000000"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with 500 characters (The first message should contains 130 characters, the second and the third message should contain 147 characters, the forth message should contains remaining characters)
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * send "11111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000" open SMS message
    * validate response code "201" and response message "Created"
    * retrieve SMS messages to "SMS.txt" and check if file contains "1111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888"
    * retrieve SMS messages to "SMS.txt" and check if file contains "888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "3333334444444444555555555566666666667777777777888888888899999999990000000000"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with 590 characters (The first message should contains 130 characters, the second, the third and the forth message should contain 147 characters, the fifth message should contains remaining characters)
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * send "11111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999" open SMS message
    * validate response code "201" and response message "Created"
    * retrieve SMS messages to "SMS.txt" and check if file contains "1111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888"
    * retrieve SMS messages to "SMS.txt" and check if file contains "888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778"
    * retrieve SMS messages to "SMS.txt" and check if file contains "8888888889999999999"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with 594 characters (Error message 400, Response message "Bad Request")
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * send "111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000" open SMS message
    * validate response code "400" and response message "Bad Request"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with many lines of the text
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * send SMS message with multiple lines
    * validate response code "201" and response message "Created"
    * retrieve SMS messages to "SMS.txt" and check if file contains "Text 1 of 3"
    * retrieve SMS messages to "SMS.txt" and check if file contains "Text 2 of 3"
    * retrieve SMS messages to "SMS.txt" and check if file contains "Text 3 of 3"
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line1. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line2. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line3. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line4. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line5. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line6. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line7. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line8. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line9. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line10. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line11. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line12. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line13. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line14. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line15. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line16. This is test."
    * retrieve SMS messages to "SMS.txt" and check if file contains "Line17. This is test."

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message for two destinations when one destination is incorrect
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * get destination
    * read destination id
    * send "test sms message" open SMS message to destination ID retrieved in previous step and to invalid ID
    * validate response code "206" and response message "Partial Content"
    * retrieve SMS messages to "SMS.txt" and check if file contains "test sms message"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with 500 characters for two destinations when one destination is incorrect
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * get destination
    * read destination id
    * send "11111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000" open SMS message to destination ID retrieved in previous step and to invalid ID
    * validate response code "206" and response message "Partial Content"
    * retrieve SMS messages to "SMS.txt" and check if file contains "1111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888"
    * retrieve SMS messages to "SMS.txt" and check if file contains "888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "3333334444444444555555555566666666667777777777888888888899999999990000000000"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with 594 characters for two destinations when one destination is incorrect(Error message 400, Response message "Bad Request")
    * delete destination
    * create destination
    * clean up adb buffer
    * remove "SMS.txt" file
    * get destination
    * read destination id
    * send "111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000" open SMS message to destination ID retrieved in previous step and to invalid ID
    * validate response code "400" and response message "Bad Request"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message for two valid destinations
    * delete destination
    * create destination
    * create destination for google voice number
    * get destination
    * read destination ids
    * clean up adb buffer
    * remove "SMS.txt" file
    * remove "Emails.txt" file
    * send "test sms message" open SMS message to destination IDs retrieved in previous steps
    * validate response code "201" and response message "Created"
    * retrieve SMS messages to "SMS.txt" and check if file contains "test sms message"
    * retrieve messages to "Emails.txt" and check if file contains "test sms message"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with 500 characters for two valid destinations
    * delete destination
    * create destination
    * create destination for google voice number
    * get destination
    * read destination ids
    * clean up adb buffer
    * remove "SMS.txt" file
    * remove "Emails.txt" file
    * send "11111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000" open SMS message to destination IDs retrieved in previous steps
    * validate response code "201" and response message "Created"
    * retrieve SMS messages to "SMS.txt" and check if file contains "1111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888"
    * retrieve SMS messages to "SMS.txt" and check if file contains "888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333"
    * retrieve SMS messages to "SMS.txt" and check if file contains "3333334444444444555555555566666666667777777777888888888899999999990000000000"
    * retrieve messages to "Emails.txt" and check if file contains "1111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333"
    * retrieve messages to "Emails.txt" and check if file contains "444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888"
    * retrieve messages to "Emails.txt" and check if file contains "888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333"
    * retrieve messages to "Emails.txt" and check if file contains "3333334444444444555555555566666666667777777777888888888899999999990000000000"

  @mbl_fsg  @sms_protocol
  Scenario: Create open SMS message with 594 characters for two valid destinations
  Scenario: Create open SMS message with 500 characters for two valid destinations
    * delete destination
    * create destination
    * create destination for google voice number
    * get destination
    * read destination ids
    * clean up adb buffer
    * remove "SMS.txt" file
    * remove "Emails.txt" file
    * send "111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999000000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000" open SMS message to destination IDs retrieved in previous steps
    * validate response code "400" and response message "Bad Request"






