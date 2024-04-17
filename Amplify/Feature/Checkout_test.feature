
Feature: Amazon checkout page
As a user
I want to be able to add an item to cart and proceed to checkout

Scenario: Add item to cart
Given User is on Amazon homepage
When User searches for iPhone
And User selects the first search result
And User adds the item to cart
Then User should see the item in the cart

Scenario: Remove item from cart
Given User is on Amazon homepage
When User searches for "iPhone"
And User selects the first search result
And User adds the item to cart
And User goes to the cart
And User removes the item from the cart
Then User should not see the item in the cart

Scenario: Update item quantity in cart
Given User is on Amazon homepage
When User searches for "iPhone"
And User selects the first search result
And User adds the item to cart
And User goes to the cart
And User updates the quantity of the item to 2
Then User should see the updated quantity in the cart

Scenario: Proceed to checkout
Given User is on Amazon homepage
When User searches for "iPhone"
And User selects the first search result
And User adds the item to cart
And User goes to the cart
And User proceeds to checkout
Then User should be on the checkout page

Scenario: Apply coupon code
Given User is on Amazon homepage
When User searches for "iPhone"
And User selects the first search result
And User adds the item to cart
And User goes to the cart
And User proceeds to checkout
And User applies the coupon code "DISCOUNT10"
Then User should see the discounted price in the order summary

Scenario: Place order
Given User is on Amazon homepage
When User searches for "iPhone"
And User selects the first search result
And User adds the item to cart
And User goes to the cart
And User proceeds to checkout
And User applies the coupon code "DISCOUNT10"
And User enters the shipping address
And User selects the payment method
And User places the order
Then User should see the order confirmation message