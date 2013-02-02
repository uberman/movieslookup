Feature: Smoke tests to ensure json validity by checking and verifying each JSON category and sub category exists, on OMDB
#Note: this is not validating values, just that the JSON structure has the expected categories and sub categories

  Scenario Outline: Smoke test the JSON top level categories returned for OMDB
    Given A call to OMDB API about a <movie>
    Then the OMDB response should include a <year>
    And also an OMDB movie rating of <mpaa_rating>
    And the OMDB movie genre <genre>
  Examples:
    |movie|year|mpaa_rating|genre|
    |fandango|1985|PG       |Comedy|
    |star+wars|1977|PG    |Action, Adventure, Fantasy, Sci-Fi|
    |X-Men+Origins:+Wolverine|2009|PG-13| Action, Adventure, Sci-Fi, Thriller|
