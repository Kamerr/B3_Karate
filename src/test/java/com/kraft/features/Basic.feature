Feature: Basic Feature
@books
  Scenario: basic stsatus code validation with bookstore
    Given url "https://bookstore.toolsqa.com/BookStore/v1/Books"
    When method get
    Then status 200
  @kraft
  Scenario: basic status code with kraftexlab
    Given url "https://www.krafttechexlab.com/sw/api/v1/allusers/getbyid/1"
    When method get
    Then status 200

    @aa
    Scenario: basic header verification with bookstore
      Given url "https://www.krafttechexlab.com/sw/api/v1/allusers/getbyid/1"
      When method get
      Then status 200
      Then match header Content-Type=="application/json; charset=utf-8"
      Then match header Connection=="keep-alive"