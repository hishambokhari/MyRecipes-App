# MyRecipes App

# Project Outline:
  
  As the coronavirus pandemic spreads through the world and the practice of social distancing remains in place to slow the spread of the disease, millions around the globe are spending a lot more time in their homes than they used to. With shelter-in-place orders in many regions, work-from-home directives from many employers, and many public spaces such as theatres, museums, and resturants all shut down, people are turning to cooking while self-quarantined not just for sustenance but for comfort and entertainment, too.

  MyRecipes is a web-based solution with a mission to help its users save time and effort around their seemingly favourite activity. It enables individuals to: 
    - Save time and effort by providing easy access to hundreds of recipes that are tried, tested and reviewed within the local community.
    - Give back by allowing users to list thier own delicious recipes for others to use.

### Have a quick look at our video here: https://www.youtube.com/watch?v=i2i9QoiW1uo
### Trello Board: https://trello.com/b/kTwmUbp5/quaraneat

# Plan:

  ## Follow an Agile Methodology Workflow consisting of:

  - Virtual Meeting and Planning process: Evaluation of proccesses and current structure of CloudAsset with the Product, Design and Development team. Based on the current structure of the company this application will be built in the tech stack used by the CloudAsset (Ruby on Rails). Mapping proccesses to determine the starting point and setting the first sprint Minimum viable product (MVP) requirements.

  - Design and Develop: Design the wireframes and mockups for the MVP. First sprint retospective meeting which consists of suggestions for improvement and process optimisation. Designing the application based on client feedback and service design team input. The clients perspective is critical since the client is part of the project from the very beginning and feedback is vital to deliver an optimal solution.

  - Application Construction and implementation: Second sprint carried out delivering the develpoments for the end user to operate and request for changes. Carry out analysis such as click stream analysis to better understand the most frequent pages a website visitor visits and in what order and the path the visitor takes through a website, which are of value in understandgin how the website operates from a technical, user experience and business perspective.

  - Evaluation and Monitoring Process: Carry out a monitoring process time to time to keep the webiste functional and consistent post deployment.

# Installation Instructions/How to run the application:

  ## Clone the repository from Github then change directory into it.
  - git clone https://github.com/hishambokhari/MyRecipes-App.git
  - cd MyRecipes-App

  ## Load dependencies with bundle.
  - Bundle install
  - rails db:create
  - rails db:migrate

  ## Run rails test to run tests.
  - rails test
  
  ## Start the server.
  - rails s
  - Visit the web browser and type in http://localhost:3000/ 
  

# Test Driven Development:
  - Mini test

# Models

  ## Recipe 
    - name should be present
    - description should be present
    - chef_id should be present 
    - maximum length for name and description, maybe a minimum for description

  ## Chef
    - chefname should be present
    - email should be present
    - size restrictions on email and chefname
    - reject invalid email addresses
    - email should be unique, case insensitive


# Database and Associations

  - Relational Databases
  - One to many associations
  - SQL - Structured Query Language
  - ActiveRecord : Abstraction from actual SQL code
  - Database layer and Associations
 
# Validations

  ## Recipe:
  - Recipe should be present
  - Name should be present
  - Description should be present
  - chef_id should be present
  - max length for name and description, maybe a minimum for description

  ## Chef:
  - Chefname should be present
  - Email should be present
  - Size restrictions on email and chef name
  - Email address should be valid format
  - Email should be unique, case insensitive


# Sessions and Authentication
  - sessions controller





  