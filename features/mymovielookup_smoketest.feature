Feature: Smoke tests to ensure json validity by checking and verifying each JSON category and sub category exists
#Note: this is not validating values, just that the JSON structure has the expected categories and sub categories

  Scenario Outline: Smoke test the JSON top level categories returned for Rotten Tomatoes
    Given A call to the Rotten Tomatoes API about a <movie>
    Then the response should include a <year>
    And also a movie rating of <mpaa_rating>
    And the movie duration <runtime>
  Examples:
    |movie|year|mpaa_rating|runtime|
    |fandango|1985|PG       |90|
    |star+wars|2005|PG-13    |140|
    |x-men+origins+-wolverine|2009|PG-13| 107|
