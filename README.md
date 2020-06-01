# README

# Plan:

  - Create a recipes app.


# Layout of the application:

  - Re-factor the code. (Clean code)
  - Look at sample layouts for homepage, and come up with a homepage design.
  - Create a mockup!

# Database and 1:m associations

  - Relational Databases
  - SQL - Structured Query Language
  - ActiveRecord : Abstraction from actual SQL code
  - Database layer and Associations
  - Virtual Attributes

# Validations

  Recipe:
  - Recipe should be present
  - Name should be present
  - Description should be present
  - chef_id should be present
  - max length for name and description, maybe a minimum for description

  Chef:
  - Chefname should be present
  - Email should be present
  - Size restrictions on email and chef name
  - Email address should be valid format
  - Email should be unique, case insensitive

  # CHEFS
  - Chefs have chefname, email
  - Chefs have one to many associations with recipes
  - Chefs can be created from the console
  - Ability to sign-up chefs, so chefs can sign up to use the application
  - Show their profile page
  - A way to log in and log out, so chefs can track items they do when using the app, like creating recipes
  - Restrictions for the apps features, for eample only logged in chefs can create recipes
  - An admin feature so chefs can monitor the app, the admin will have more rights than other users...

# Sessions and Authentication

  - sessions controller
  - routes
  - Not a model backed resource!

  # Admin User Functionality

    - Add an admin attribute, if true then the user is an admin. The default will be false
    - We'll update our views and controllers based on this
    - Admin will have full access - editing other chefs recipes, updating chef info, deleting other chefs