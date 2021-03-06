Feature: user can add new book

  Scenario: user can succesfully add new book
    Given user is at the main page
    When link "Add new item" is clicked
    And book fields title "Cucumber", isbn "", author and year "2018" are filled and submitted
    And user is redirected to "/items"
    And link for "book" named "Cucumber" is clicked
    And user is redirected to "/book"
    Then "Cucumber" is shown

  Scenario: user cannot add book with already existing isbn
    Given user is at the main page
    When link "Add new item" is clicked
    And book fields title "Cucumber", isbn "1234567891011", author and year "2018" are filled and submitted
    Then "Error occurred" is shown

  Scenario: user cannot add book with non-numerical year
    Given user is at the main page
    When link "Add new item" is clicked
    And book fields title "Cucumber", isbn "", author and year "once upon a time" are filled and submitted
    Then "year not numeric or missing" is shown

  Scenario: user cant  add new book without Title
    Given user is at the main page
    When link "Add new item" is clicked
    And book fields isbn, author and year are filled and submitted
    Then "Missing Title" is shown

  Scenario: user cant add new book without ISBN
    Given user is at the main page
    When link "Add new item" is clicked
    And book fields Title, author and year are filled and submitted
    Then "Missing ISBN" is shown

  Scenario: user cant add new book without Author
    Given user is at the main page
    When link "Add new item" is clicked
    And book fields isbn, title and year are filled and submitted
    Then "Missing Author" is shown

  Scenario: user cant add new book without Year
    Given user is at the main page
    When link "Add new item" is clicked
    And book fields isbn, author and Title are filled and submitted
    Then "year not numeric or missing" is shown
