
@smoke
Feature: User able to edit their debit/credit information. 
  

 Background: 
    Given User is on retail website
    When User clicks on Sign in option
    And User enters following login credentials:
      | Email                    | Password    |
      | billybob123@tekschool.us | Burgers123$ |
    And User clicks on login button
    Then User should be logged into their account
    When User click on Account option

  Scenario: Verify user can edit debit or credit card
  When User clicks on Edit option of card section
  And User edits card information
  |cardNumber					 |nameOnCard	|expirationMonth|   expirationYear		 |securityCode|
  |		4447956515169994 |	Tryndamere|		3						|   	2026				 |			321		  |
  And User clicks on Update Your Card button
  Then Update successfull message should be displayed 'Payment Method updated Successfully'
  