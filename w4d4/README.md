# Analyzing and planning a new Rails app
-------------------------------------------

Today we will be looking at how to go about planning and thinking through a Rails application. We will be talking about some of the things that need to be done before you start coding.

## Agenda

1. A quick digression about partial templates
2. User Stories
3. Planning
4. Modelling


## User Stories

As a ...
I want ...
So that...

- Who's the user?
- What do they need to do?
- Why do they need it? What is the goal they're trying to accomplish?

### EXAMPLES
- As a customer, I want to make a reservation
- As a customer, I want to see a list of all restaurants
- As a restaurant owner, I want to see a list of my open tables
- As a restaurant owner, I want to see a list of the reservations
- As a restaurant owner, I want to be able to create my restaurant
- As a customer, I want to filter restaurants by location
- As a customer, I want to filter restaurants by type of food
- As a customer, I want to filter restaurants by amenities
- As a customer, I want to change my reservation
- As a customer, I want to cancel my reservation
- As a customer, I want to login to my account
- As a customer, I want to see restaurant reviews
- As a customer, I want to write restaurant reviews
- As a customer, I want to log out of my account
- As a customer, I want time suggestions
- As a customer, I want to order takeout
- As a restaurant owner, I want to display my full restaurant page (menu, hours)
- As a customer, I want to be able to get directions to the restaurant

## Prioritize
1. NEED TO HAVE
2. NICE TO HAVE
3. HAPPY TO HAVE

## Planning
- Make assumptions
  - Maximum occupancy (tables are irrelevant)
  - All reservations have the same duration (1 hour)
    - people can only book on the hour
  - All reservations are made online from our service
- Simplify!
- Make mockups
  - Gather feedback
  - Test usability
  - Visualize what the app looks like
  - Reveals missed user stories or flaws in assumptions
  - Test prioritization

Reservation
Place, time, party size


## Modelling
- Pen and paper / Whiteboard
- Create models
- Draw relationships
