Feature: Demo feature

    Scenario Outline: Run first demo feature
    Given Google page is opened <TestID>
    When Search with <SearchItem>
    Then Click on the first search result
    Then URL should match <ExpectedURL>

        Examples:
            | TestID     | SearchItem | ExpectedURL |
            | Demo_TC01  | wdio  | https://webdriver.io/  |
            | Demo_TC02  | wdio  | https://webdriver.io/  |
            | Demo_TC03  | wdio  | https://webdriver.io/  |
            | Demo_TC04  | wdio  | https://webdriver.io/  |
            | Demo_TC05  | wdio  | https://webdriver.io/  |
            | Demo_TC06  | wdio  | https://webdriver.io/  |
            | Demo_TC07  | wdio  | https://webdriver.io/  |
            | Demo_TC08  | wdio  | https://webdriver.io/  |
            | Demo_TC09  | wdio  | https://webdriver.io/  |
            | Demo_TC10  | wdio  | https://webdriver.io/  |