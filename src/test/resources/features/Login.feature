Feature: Login functionality

Scenario: Login with valid credentials
Given User navigated to login page
When User enters valid email address "nishant.yadav@snackmagic.com" into email field
And User enters valid password "1234567890" into password field
And User clicks on Login button
Then User should get successfully logged in


Scenario: Login with invalid credentials
Given User navigated to login page
When User enters invalid email address "amotooricapss9@gmail.com" into email field
And User enters invalid password "1234567890" into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch

Scenario: Login with valid email and invalid password
Given User navigated to login page
When User enters valid email address "amotooricap9@gmail.com" into email field
And User enters invalid password "1234567890" into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch

Scenario: Login with invalid email and valid password
Given User navigated to login page
When User enters invalid email address "amotoddoricap9@gmail.com" into email field
And User enters valid password "12345" into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch

Scenario: Login without providing any credentails
Given User navigated to login page
When User dont enter email address into email field
And User dont enter password into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch 