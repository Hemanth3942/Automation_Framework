@tag
Feature: CSS Validation 9
  
  @tag1111
  Scenario: Validate CSS properties
    Given Open the Webpage
    And Close the cookies
		Then I have the following CSS properties for element "MVP_Home_heading_indulgence"
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(140, 115, 67, 1)			 		 |
      | font-family   	| equalsTo  | Objectivity, Helvetica, sans-serif |
      | font-size     	| equalsTo  | 48px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | letter-spacing  | equalsTo  | -0.5px                     |
      | line-height   	| equalsTo  | 54px                   		 |
      | padding       	| equalsTo  | 0px       	   |    
      | text-align    	| equalsTo  | center                  		 |
    Then I have the following CSS properties for element "MVP_Home_heading_destination" 
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(140, 115, 67, 1)			 		 |
      | font-family   	| equalsTo  | Objectivity, Helvetica, sans-serif |
      | font-size     	| equalsTo  | 48px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | letter-spacing  | equalsTo  | -0.5px                     |
      | line-height   	| equalsTo  | 54px                   		 |
      | padding       	| equalsTo  | 0px       	   |    
      | text-align    	| equalsTo  | center                  		 |
    Then I have the following CSS properties for element "MVP_Home_heading_stays" 
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(140, 115, 67, 1)			 		 |
      | font-family   	| equalsTo  | Objectivity, Helvetica, sans-serif |
      | font-size     	| equalsTo  | 48px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | letter-spacing  | equalsTo  | -0.5px                     |
      | line-height   	| equalsTo  | 54px                   		 |
      | padding       	| equalsTo  | 0px       	   |    
      | text-align    	| equalsTo  | center                  		 |
    Then I have the following CSS properties for element "MVP_Home_heading_offers" 
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(140, 115, 67, 1)			 		 |
      | font-family   	| equalsTo  | Objectivity, Helvetica, sans-serif |
      | font-size     	| equalsTo  | 48px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | letter-spacing  | equalsTo  | -0.5px                     |
      | line-height   	| equalsTo  | 54px                   		 |
      | padding       	| equalsTo  | 0px       	   |    
      | text-align    	| equalsTo  | center                  		 |
    Then I have the following CSS properties for element "MVP_Home_heading_celebrated" 
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(140, 115, 67, 1)			 		 |
      | font-family   	| equalsTo  | Objectivity, Helvetica, sans-serif |
      | font-size     	| equalsTo  | 48px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | letter-spacing  | equalsTo  | -0.5px                     |
      | line-height   	| equalsTo  | 54px                   		 |
      | padding       	| equalsTo  | 0px       	   |    
      | text-align    	| equalsTo  | center                  		 |
    Then I have the following CSS properties for element "MVP_Home_heading_foodAndDrink" 
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(140, 115, 67, 1) 			 |
      | font-family   	| equalsTo  | Objectivity, Helvetica, sans-serif |
      | font-size     	| equalsTo  | 36px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | line-height   	| equalsTo  | 48px                   		 |
      | padding       	| equalsTo  | 0px      	   |    
      | text-align    	| equalsTo  | center                  		 |    
    Then I have the following CSS properties for element "MVP_Home_heading_aceQuote" 
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(46, 46, 46, 1) 			 |
      | font-family   	| equalsTo  | Objectivity, Helvetica, sans-serif			 |
      | font-size     	| equalsTo  | 30px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | line-height   	| equalsTo  | 40px                   		 |
      | margin-bottom	  | equalsTo	| 32px	|
      | margin-top	  	| equalsTo	| 24px	|
      | padding       	| equalsTo  | 0px       	   | 
      | text-align    	| equalsTo  | center                  		 |      
    Then I have the following CSS properties for element "MVP_Home_heading_billboard" 
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(46, 46, 46, 1) 			 |
      | font-family   	| equalsTo  | Objectivity, Helvetica, sans-serif|
      | font-size     	| equalsTo  | 30px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | line-height   	| equalsTo  | 40px                   		 |
      | padding       	| equalsTo  | 0px       	   |    
      | text-align    	| equalsTo  | center                  		 | 
    Then I have the following CSS properties for element "MVP_Home_title_familyFavourites" 
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(140, 115, 67, 1) 			 |
      | font-family   	| equalsTo  | Poppins, Helvetica, sans-serif|
      | font-size     	| equalsTo  | 24px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | line-height   	| equalsTo  | 32px                   		 |
     Then I have the following CSS properties for element "MVP_Home_title_sweetRetreats" 
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(140, 115, 67, 1) 			 |
      | font-family   	| equalsTo  | Poppins, Helvetica, sans-serif|
      | font-size     	| equalsTo  | 24px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | line-height   	| equalsTo  | 32px                   		 |
     Then I have the following CSS properties for element "MVP_Home_title_gourmetGetaways" 
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(140, 115, 67, 1) 			 |
      | font-family   	| equalsTo  | Poppins, Helvetica, sans-serif|
      | font-size     	| equalsTo  | 24px                   		 |
      | font-weight   	| equalsTo  | 500 		 |
      | line-height   	| equalsTo  | 32px                   		 |   
     Then I have the following CSS properties for element "MVP_Home_btn_subscribe" 
      | cssProperty    	| operator 	| expectedValue         		 |
      | background-color| equalsTo  | rgba(140, 115, 67, 1)					 |
      |	color						|	equalsTo 	| rgba(255, 255, 255, 1) 			 |
      | font-family   	| equalsTo  | Poppins, Helvetica, sans-serif|
      | font-size     	| equalsTo  | 16px                   		 |
      | font-weight   	| equalsTo  | 400 		 |
      | line-height   	| equalsTo  | 24px                   		 |
     Then I have the following CSS properties for element "MVP_Home_section_heading_body"
      | cssProperty    	| operator 	| expectedValue         		 |
      |	color						|	equalsTo 	| rgba(71, 71, 71, 1) 			 |
      | font-family   	| equalsTo  | Poppins, Helvetica, sans-serif |
      | font-size     	| equalsTo  | 16px                   		 |
      | font-weight   	| equalsTo  | 400 		 |
      | line-height   	| equalsTo  | 24px                   		 | 
    
    Then validate that element "MVP_Home_link_callout_1" clickable and redirect to link
    And browser go back
    Then validate that element "MVP_Home_link_callout_2" clickable and redirect to link
    And browser go back
    Then validate that element "MVP_Home_link_callout_3" clickable and redirect to link
    And browser go back
    Then validate that element "MVP_Home_link_stays" clickable and redirect to link
    And browser go back
    Then validate that element "MVP_Home_link_offers" clickable and redirect to link
    And browser go back
    Then validate that element "MVP_Home_btn_discover" clickable and redirect to link
    And browser go back
    Then validate that element "MVP_Home_btn_viewMore" clickable and redirect to link
    And browser go back
    Then validate that element "MVP_Home_btn_subscribe" clickable and redirect to link
    And browser go back
    Then validate that element "MVP_Home_link_destination" clickable and redirect to link
    And browser go back
    
    Then close the browser