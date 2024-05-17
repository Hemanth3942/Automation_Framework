@tag
Feature: CSS Validation
  
  @tag1
  Scenario: Validate CSS properties
    Given Open the Webpage "urlMovenpick"
    And Close the cookies
		Then I have the following CSS properties for element "title_heading1"
			| cssProperty   | operator | expectedValue                      |
			| color         | equalsTo | rgba(140, 115, 67, 1)              |
			| font-family   | equalsTo | Objectivity, Helvetica, sans-serif |
			| font-size     | equalsTo | 48px                               |
			| font-weight   | equalsTo | 500                                |
			| line-height   | equalsTo | 54px                               |
			| padding       | equalsTo | 0px                                |
			| text-align    | equalsTo | center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_destination"
			| cssProperty     | operator |  expectedValue                      |
			| color           | equalsTo |  rgba(140, 115, 67, 1)              |
			| font-family     | equalsTo |  Objectivity, Helvetica, sans-serif |
			| font-size       | equalsTo |  48px                               |
			| font-weight     | equalsTo |  500                                |
			| letter-spacing  | equalsTo |  -0.5px                             |
			| line-height     | equalsTo |  54px                               |
			| padding         | equalsTo |  0px                                |
			| text-align      | equalsTo |  center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_stays"
			| cssProperty     | operator |  expectedValue                      |
			| color           | equalsTo |  rgba(140, 115, 67, 1)              |
			| font-family     | equalsTo |  Objectivity, Helvetica, sans-serif |
			| font-size       | equalsTo |  48px                               |
			| font-weight     | equalsTo |  500                                |
			| letter-spacing  | equalsTo |  -0.5px                             |
			| line-height     | equalsTo |  54px                               |
			| padding         | equalsTo |  0px                                |
			| text-align      | equalsTo |  center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_offers"
			| cssProperty     | operator |  expectedValue                      |
			| color           | equalsTo |  rgba(140, 115, 67, 1)              |
			| font-family     | equalsTo |  Objectivity, Helvetica, sans-serif |
			| font-size       | equalsTo |  48px                               |
			| font-weight     | equalsTo |  500                                |
			| letter-spacing  | equalsTo |  -0.5px                             |
			| line-height     | equalsTo |  54px                               |
			| padding         | equalsTo |  0px                                |
			| text-align      | equalsTo |  center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_celebrated"
			| cssProperty     | operator |  expectedValue                      |
			| color           | equalsTo |  rgba(140, 115, 67, 1)              |
			| font-family     | equalsTo |  Objectivity, Helvetica, sans-serif |
			| font-size       | equalsTo |  48px                               |
			| font-weight     | equalsTo |  500                                |
			| letter-spacing  | equalsTo |  -0.5px                             |
			| line-height     | equalsTo |  54px                               |
			| padding         | equalsTo |  0px                                |
			| text-align      | equalsTo |  center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_foodAndDrink"
			| cssProperty     | operator |  expectedValue                      |
			| color           | equalsTo |  rgba(140, 115, 67, 1)              |
			| font-family     | equalsTo |  Objectivity, Helvetica, sans-serif |
			| font-size       | equalsTo |  36px                               |
			| font-weight     | equalsTo |  500                                |
			| line-height     | equalsTo |  48px                               |
			| padding         | equalsTo |  0px                                |
			| text-align      | equalsTo |  center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_aceQuote"
			| cssProperty     | operator |  expectedValue                      |
			| color           | equalsTo |  rgba(46, 46, 46, 1)                |
			| font-family     | equalsTo |  Objectivity, Helvetica, sans-serif |
			| font-size       | equalsTo |  30px                               |
			| font-weight     | equalsTo |  500                                |
			| line-height     | equalsTo |  40px                               |
			| margin-bottom   | equalsTo |  32px                               |
			| margin-top      | equalsTo |  24px                               |
			| padding         | equalsTo |  0px                                |
			| text-align      | equalsTo |  center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_aceQuo"
			| cssProperty     | operator |  expectedValue                      |
			| color           | equalsTo |  rgba(46, 46, 46, 1)                |
			| font-family     | equalsTo |  Objectivity, Helvetica, sans-serif |
			| font-size       | equalsTo |  30px                               |
			| font-weight     | equalsTo |  500                                |
			| line-height     | equalsTo |  40px                               |
			| margin-bottom   | equalsTo |  32px                               |
			| margin-top      | equalsTo |  24px                               |
			| padding         | equalsTo |  0px                                |
			| text-align      | equalsTo |  center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_aceQuotea"
			| cssProperty     | operator |  expectedValue                      |
			| color           | equalsTo |  rgba(46, 46, 46, 1)                |
			| font-family     | equalsTo |  Objectivity, Helvetica, sans-serif |
			| font-size       | equalsTo |  30px                               |
			| font-weight     | equalsTo |  500                                |
			| line-height     | equalsTo |  40px                               |
			| margin-bottom   | equalsTo |  32px                               |
			| margin-top      | equalsTo |  24px                               |
			| padding         | equalsTo |  0px                                |
			| text-align      | equalsTo |  center                             |
			
		Then validate that element "MVP_Home_link_callout_1" clickable and redirect to link
    And browser go back
    Then validate that element "MVP_Home_link_callout_1" clickable and redirect to link
    And browser go back
    Then validate that element "MVP_Home_heading_aceQuote" clickable and redirect to link
    And browser go back

    Then close the browser