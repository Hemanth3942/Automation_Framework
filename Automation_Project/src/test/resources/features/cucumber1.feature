@tag
Feature: CSS Validation 2
  
  @tag1
  Scenario: Validate CSS properties 2
    Given Open the Webpage
    And Close the cookies
		Then I have the following CSS properties for element "title_heading1":
			| cssProperty   | expectedValue                      |
			| color         | rgba(140, 115, 67, 1)              |
			| font-family   | Objectivity, Helvetica, sans-serif |
			| font-size     | 48px                               |
			| font-weight   | 500                                |
			| line-height   | 54px                               |
			| padding       | 0px                                |
			| text-align    | center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_destination":
			| cssProperty     | expectedValue                      |
			| color           | rgba(140, 115, 67, 1)              |
			| font-family     | Objectivity, Helvetica, sans-serif |
			| font-size       | 48px                               |
			| font-weight     | 500                                |
			| letter-spacing  | -0.5px                             |
			| line-height     | 54px                               |
			| padding         | 0px                                |
			| text-align      | center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_stays":
			| cssProperty     | expectedValue                      |
			| color           | rgba(140, 115, 67, 1)              |
			| font-family     | Objectivity, Helvetica, sans-serif |
			| font-size       | 48px                               |
			| font-weight     | 500                                |
			| letter-spacing  | -0.5px                             |
			| line-height     | 54px                               |
			| padding         | 0px                                |
			| text-align      | center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_offers":
			| cssProperty     | expectedValue                      |
			| color           | rgba(140, 115, 67, 1)              |
			| font-family     | Objectivity, Helvetica, sans-serif |
			| font-size       | 48px                               |
			| font-weight     | 500                                |
			| letter-spacing  | -0.5px                             |
			| line-height     | 54px                               |
			| padding         | 0px                                |
			| text-align      | center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_celebrated":
			| cssProperty     | expectedValue                      |
			| color           | rgba(140, 115, 67, 1)              |
			| font-family     | Objectivity, Helvetica, sans-serif |
			| font-size       | 48px                               |
			| font-weight     | 500                                |
			| letter-spacing  | -0.5px                             |
			| line-height     | 54px                               |
			| padding         | 0px                                |
			| text-align      | center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_foodAndDrink":
			| cssProperty     | expectedValue                      |
			| color           | rgba(140, 115, 67, 1)              |
			| font-family     | Objectivity, Helvetica, sans-serif |
			| font-size       | 36px                               |
			| font-weight     | 500                                |
			| line-height     | 48px                               |
			| padding         | 0px                                |
			| text-align      | center                             |
			
		Then I have the following CSS properties for element "MVP_Home_heading_aceQuote":
			| cssProperty     | expectedValue                      |
			| color           | rgba(46, 46, 46, 1)                |
			| font-family     | Objectivity, Helvetica, sans-serif |
			| font-size       | 30px                               |
			| font-weight     | 500                                |
			| line-height     | 40px                               |
			| margin-bottom   | 32px                               |
			| margin-top      | 24px                               |
			| padding         | 0px                                |
			| text-align      | center                             |
			
    Then close the browser